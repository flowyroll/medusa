.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x146c0, %rax
clflush (%rax)
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rax)
nop
inc %rcx
lea addresses_normal_ht+0x192f5, %rbx
cmp $50737, %r13
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
cmp $12935, %rbx
lea addresses_normal_ht+0xec35, %rdi
nop
nop
add $34818, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
nop
add %r13, %r13
lea addresses_D_ht+0x10495, %rbp
cmp %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm0
and $0xffffffffffffffc0, %rbp
movntdq %xmm0, (%rbp)
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x67fd, %rbx
nop
nop
nop
nop
nop
sub %r13, %r13
movw $0x6162, (%rbx)
nop
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x173df, %rcx
nop
nop
xor $26398, %rax
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x158f5, %rcx
nop
nop
nop
nop
nop
sub $948, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0xb75, %rsi
lea addresses_A_ht+0xc4c2, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rax, %rax
mov $96, %rcx
rep movsw
dec %r12
lea addresses_A_ht+0xf775, %rax
cmp $2189, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rax)
nop
add $40554, %r12
lea addresses_WC_ht+0xb2a5, %rsi
lea addresses_WT_ht+0x10335, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
sub $15393, %r13
mov $114, %rcx
rep movsw
cmp %rcx, %rcx
lea addresses_WT_ht+0x3bf5, %r12
nop
nop
nop
nop
sub $52705, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r12)
nop
add $37295, %rax
lea addresses_normal_ht+0x3a55, %rax
nop
nop
nop
cmp $63845, %rsi
movups (%rax), %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
nop
nop
and $22531, %r13
lea addresses_WC_ht+0x172f5, %rsi
lea addresses_UC_ht+0x3f2b, %rdi
clflush (%rsi)
nop
nop
nop
add $19945, %r13
mov $36, %rcx
rep movsw
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx

// Store
lea addresses_D+0x163f9, %r10
nop
nop
nop
nop
nop
lfence
movl $0x51525354, (%r10)
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_WT+0x1fd75, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add %r13, %r13
movw $0x5152, (%r11)
nop
xor $13308, %r15

// Faulty Load
mov $0x70af830000000af5, %r13
nop
nop
nop
and %r9, %r9
vmovntdqa (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'00': 1}
00
*/
