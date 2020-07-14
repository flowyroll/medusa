.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15ec4, %rsi
lea addresses_WC_ht+0x62c4, %rdi
nop
add %r8, %r8
mov $57, %rcx
rep movsb
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x194c4, %r8
nop
nop
nop
add $14220, %rbx
movw $0x6162, (%r8)
nop
nop
nop
nop
sub $297, %rdi
lea addresses_UC_ht+0x25c4, %rsi
lea addresses_UC_ht+0xb5c4, %rdi
nop
nop
nop
and %r13, %r13
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x16fc4, %rdi
nop
xor %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
xor $28505, %rdi
lea addresses_WT_ht+0xe2c4, %r13
nop
nop
nop
add $57230, %r8
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
and $41082, %rdi
lea addresses_D_ht+0x141ec, %rcx
nop
and $8107, %r8
movb (%rcx), %r15b
nop
add $63142, %r13
lea addresses_normal_ht+0xc3e4, %rsi
lea addresses_A_ht+0x16da4, %rdi
nop
nop
inc %rdx
mov $110, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_UC+0xc1c4, %rbx
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_D+0x17c04, %r15
nop
nop
nop
nop
nop
inc %rdx
movl $0x51525354, (%r15)
nop
nop
nop
nop
cmp $13139, %rbx

// Store
mov $0x6d275c0000000ec4, %rcx
and %r15, %r15
movw $0x5152, (%rcx)
add $42766, %r13

// Store
mov $0x3224b800000004c4, %rcx
nop
nop
nop
nop
nop
xor $2279, %r13
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
inc %r13

// Store
lea addresses_WT+0x1b3b4, %rdx
nop
and %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rdx)
nop
and %rbx, %rbx

// Load
mov $0x7871dd00000003ea, %r15
and %rdi, %rdi
mov (%r15), %r9d
nop
nop
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_normal+0xeac4, %rcx
nop
nop
nop
add $43858, %rdi
mov (%rcx), %edx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'34': 10}
34 34 34 34 34 34 34 34 34 34
*/
