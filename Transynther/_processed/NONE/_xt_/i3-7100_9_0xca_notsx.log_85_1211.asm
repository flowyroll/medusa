.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_PSE+0x14f1d, %rdx
nop
nop
nop
nop
nop
and $61891, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movaps %xmm2, (%rdx)
nop
nop
nop
nop
add $64989, %rdx

// Store
lea addresses_A+0x9ef5, %rcx
nop
nop
nop
dec %r9
movb $0x51, (%rcx)
nop
nop
nop
nop
add $31957, %r9

// Store
lea addresses_D+0x816d, %rbx
nop
sub %rbp, %rbp
movw $0x5152, (%rbx)
nop
nop
nop
and $39671, %r9

// Faulty Load
lea addresses_RW+0x1e869, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
inc %rbp
vmovups (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'32': 85}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
