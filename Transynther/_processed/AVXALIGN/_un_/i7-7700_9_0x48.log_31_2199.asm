.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
lea addresses_D_ht+0x10b98, %rbp
inc %rcx
movb (%rbp), %r11b
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0xfc75, %rcx
nop
dec %r8
movb $0x61, (%rcx)
nop
and %r15, %r15
lea addresses_D_ht+0x1ba18, %rbp
nop
add %r9, %r9
movb (%rbp), %cl
nop
nop
nop
add $7129, %r11
lea addresses_A_ht+0x1509c, %rbp
nop
xor %r15, %r15
movb $0x61, (%rbp)
nop
sub $17348, %r11
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx

// Store
lea addresses_A+0x1b118, %rcx
and $51399, %r15
movb $0x51, (%rcx)
nop
nop
nop
nop
cmp $56565, %rcx

// Store
mov $0x458, %r15
nop
nop
nop
cmp $14042, %rbx
movb $0x51, (%r15)
nop
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_normal+0x19718, %r13
nop
nop
nop
nop
xor $54621, %r15
vmovntdqa (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': True}}
{'08': 16, '72': 15}
08 08 72 08 08 08 72 72 72 72 72 08 72 08 08 08 08 08 72 72 72 08 72 72 08 08 08 72 72 08 72
*/
