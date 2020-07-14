.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x170e6, %rsi
lea addresses_WT_ht+0x1de3e, %rdi
nop
nop
cmp %rdx, %rdx
mov $74, %rcx
rep movsb
nop
nop
dec %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rcx

// Store
lea addresses_UC+0x16616, %rbx
nop
nop
nop
add %rcx, %rcx
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
sub $54944, %r11

// Load
lea addresses_D+0x8b56, %r11
nop
nop
nop
nop
nop
and $4008, %r10
movups (%r11), %xmm2
vpextrq $1, %xmm2, %r13
nop
inc %r11

// Faulty Load
lea addresses_A+0x36f6, %r8
nop
nop
add $11671, %r12
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'ed': 1, 'a4': 1, 'ff': 2, '45': 40, '00': 6, '74': 1}
45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 74 45 45 45 00 45 45 45 45 00 45 45 45 45 45 ff 45 45 45 ed 00 45 ff 45 45 45 00 a4 45 45 45 45 45 45 45
*/
