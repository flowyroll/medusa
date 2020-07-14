.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x1c0ed, %rsi
lea addresses_PSE+0x5556, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $46, %rcx
rep movsq
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_A+0xed9d, %r15
nop
inc %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
add $32450, %rdx

// Faulty Load
lea addresses_UC+0x22ed, %r15
nop
nop
nop
nop
sub $41289, %rsi
movaps (%r15), %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'32': 6}
32 32 32 32 32 32
*/
