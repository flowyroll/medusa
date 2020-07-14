.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc3b2, %r15
inc %rsi
mov (%r15), %bp
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x61b2, %rsi
lea addresses_WC_ht+0x5ca8, %rdi
nop
nop
sub $27307, %rbp
mov $83, %rcx
rep movsl
nop
and $25185, %r10
lea addresses_D_ht+0xc2ee, %rdi
nop
nop
and %r13, %r13
movw $0x6162, (%rdi)
cmp %rdi, %rdi
lea addresses_normal_ht+0x6cb2, %rsi
lea addresses_A_ht+0xcdac, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $72, %rcx
rep movsl
xor %rdi, %rdi
lea addresses_UC_ht+0x1b3b2, %r15
nop
nop
nop
nop
nop
add $33183, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
nop
nop
nop
xor $42184, %rcx
lea addresses_normal_ht+0x315e, %rsi
nop
nop
nop
nop
sub %r13, %r13
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x8f2, %r10
cmp $37271, %rsi
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
xor $29246, %r10
lea addresses_normal_ht+0x95b2, %r13
cmp $25092, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %r13
vmovaps %ymm5, (%r13)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x1d9c8, %r13
nop
nop
nop
nop
nop
dec %r10
movb $0x61, (%r13)
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x14db2, %r10
clflush (%r10)
nop
nop
xor %rcx, %rcx
mov (%r10), %ebx
nop
nop
inc %r13
lea addresses_WT_ht+0xdbb2, %rbp
nop
nop
and %rbx, %rbx
movw $0x6162, (%rbp)
nop
nop
xor $18100, %rbp
lea addresses_A_ht+0x92f2, %r13
add %rcx, %rcx
movw $0x6162, (%r13)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x121b2, %rsi
lea addresses_WT_ht+0x105b2, %rdi
xor $6779, %r10
mov $111, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0xb792, %rsi
lea addresses_normal_ht+0xf30b, %rdi
nop
nop
nop
sub %r13, %r13
mov $97, %rcx
rep movsl
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0xceb2, %r12
clflush (%r12)
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WT+0x1a59a, %r12
nop
nop
nop
nop
and $51648, %r9
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
xor $16467, %r15

// REPMOV
lea addresses_A+0x17332, %rsi
lea addresses_A+0x125b2, %rdi
nop
nop
add $13438, %r11
mov $124, %rcx
rep movsb
add $14013, %r15

// Store
mov $0x3fe8b50000000c32, %rsi
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
cmp $54959, %r15

// Store
lea addresses_PSE+0xf7f2, %r11
nop
nop
cmp $1, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r11)
nop
add $61536, %r12

// Faulty Load
lea addresses_US+0x165b2, %r11
nop
nop
nop
inc %rcx
mov (%r11), %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'00': 1, '35': 13744, '79': 8084}
00 79 79 79 35 35 35 35 35 79 79 79 79 35 79 35 79 79 35 79 35 79 35 79 35 79 79 35 35 35 35 35 79 35 35 35 35 35 79 79 35 79 35 35 35 79 35 79 35 35 79 35 35 35 35 35 35 79 79 35 35 35 35 35 79 35 35 79 35 35 35 35 79 35 35 79 79 35 35 35 79 79 35 35 35 35 79 35 35 35 35 79 35 35 35 35 79 35 35 79 79 35 35 35 35 35 79 35 79 79 35 35 35 35 35 35 35 35 79 35 79 79 35 35 79 79 35 35 79 79 79 35 35 35 35 79 79 35 35 35 35 35 35 79 79 35 35 79 79 35 35 35 35 79 79 35 35 79 35 35 79 79 35 35 35 79 79 79 79 79 79 35 79 79 35 79 79 35 35 79 35 35 79 79 79 79 79 79 35 79 79 79 35 35 35 35 35 35 79 79 35 35 35 35 79 35 79 79 35 79 79 35 35 79 35 35 79 35 79 35 79 35 79 35 35 79 35 79 35 35 35 35 35 79 35 35 35 35 79 35 35 35 79 35 35 35 35 35 35 35 35 79 79 35 35 79 35 35 79 35 35 79 35 35 79 79 35 79 35 79 35 35 35 79 35 35 35 35 35 79 79 35 79 35 79 79 79 79 79 35 35 79 35 79 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 79 79 35 79 35 79 79 35 35 35 35 79 35 79 35 35 35 35 35 35 35 79 35 35 35 79 35 35 35 35 35 35 35 35 35 35 79 35 35 35 79 35 79 79 35 35 35 35 35 35 35 35 79 35 35 35 79 35 35 79 35 79 35 35 35 79 79 79 35 35 79 79 79 79 79 35 79 35 79 79 35 79 35 35 79 79 35 79 35 35 35 35 79 79 79 79 35 79 79 35 35 79 35 35 35 79 35 79 35 35 79 35 79 79 79 35 35 35 79 35 79 79 79 79 35 79 79 35 79 35 79 35 35 35 79 35 79 35 35 79 35 79 79 35 35 35 79 35 79 35 79 35 79 35 35 35 35 79 79 35 79 35 79 35 79 35 35 35 79 79 35 35 35 79 35 35 35 79 35 35 35 35 35 35 35 79 79 79 35 79 35 79 35 35 79 35 79 79 79 35 79 79 35 35 35 79 35 79 79 35 35 35 79 79 35 79 35 79 35 35 79 79 79 35 35 35 79 79 35 79 35 79 35 79 35 35 35 79 35 79 35 35 35 79 35 35 35 35 79 35 35 79 35 79 79 79 35 35 35 35 35 79 79 35 35 35 79 35 35 79 79 35 35 35 35 35 35 79 35 35 79 35 35 35 35 79 35 35 79 35 35 35 35 79 35 79 35 35 35 35 35 35 35 79 35 79 35 35 79 35 35 35 35 35 35 35 35 35 35 79 79 35 35 35 35 79 35 79 35 35 79 35 35 79 35 79 35 35 35 35 35 79 35 79 79 35 35 79 79 79 79 35 79 35 79 35 35 35 35 79 35 35 35 79 35 79 35 35 35 35 35 35 35 35 79 79 35 35 35 35 35 79 79 35 35 35 35 35 35 35 35 79 79 35 35 35 35 79 35 79 35 79 79 79 79 35 35 79 79 79 35 79 35 35 35 79 35 79 79 35 79 79 79 79 35 35 35 79 79 35 79 35 79 79 35 79 35 35 35 79 35 79 35 35 79 79 35 35 35 79 79 35 35 35 35 35 79 79 35 35 35 35 79 35 79 35 35 79 35 79 79 79 79 35 35 79 35 35 79 79 79 35 35 79 35 79 35 79 35 79 79 35 79 79 79 35 35 79 35 35 79 35 35 79 35 35 79 79 79 35 35 35 35 79 35 79 79 79 35 35 35 79 35 35 35 35 35 79 35 35 35 79 79 35 35 35 35 35 35 79 79 35 35 79 79 35 35 35 35 35 35 79 35 35 79 79 79 35 35 35 79 35 35 35 35 35 79 35 35 35 35 35 35 79 35 35 35 79 35 79 35 79 35 35 35 79 35 79 35 35 79 35 79 35 35 35 35 35 35 79 35 35 35 79 79 35 35 35 79 35 35 35 79 35 35 35 35 79 79 35 35 79 35 79 35 79 35 35 35 35 35 79 35 35 35 35 35 79 35 35 35 35 35 35 79 35 35 35 79 35 35 79 79 35 79 79 35 35 35 35 35 79 35 79 35 35 35 35 79 79 79 79 79 79 79 79 35 79 35 35 35 35 35 35 35 35 35 79 35 35 35
*/
