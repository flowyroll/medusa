.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14085, %r8
nop
add $25391, %rax
mov $0x6162636465666768, %r11
movq %r11, (%r8)
nop
and %rax, %rax
lea addresses_WC_ht+0x1a87f, %rbp
nop
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%rbp)
nop
nop
dec %r11
lea addresses_normal_ht+0x1c07f, %r11
nop
cmp %r10, %r10
movb $0x61, (%r11)
xor %r10, %r10
lea addresses_A_ht+0x1187f, %rax
nop
nop
nop
nop
sub $62439, %r15
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0xd47f, %rsi
lea addresses_UC_ht+0x1347f, %rdi
nop
sub %rbp, %rbp
mov $111, %rcx
rep movsl
nop
nop
nop
cmp $49728, %r10
lea addresses_A_ht+0x15a8f, %rsi
nop
cmp %rax, %rax
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x9e7f, %rsi
lea addresses_WT_ht+0x10b7f, %rdi
clflush (%rdi)
nop
nop
xor %r11, %r11
mov $94, %rcx
rep movsw
nop
nop
nop
and $43442, %r14
lea addresses_WC_ht+0x1247f, %rcx
nop
nop
nop
nop
nop
xor %r11, %r11
mov (%rcx), %r14
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x227f, %rsi
lea addresses_WT_ht+0x178b7, %rdi
clflush (%rdi)
nop
nop
nop
dec %r14
mov $94, %rcx
rep movsb
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x1227f, %rsi
lea addresses_D_ht+0x1a99d, %rdi
nop
nop
cmp %r15, %r15
mov $7, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x1287f, %rax
xor %r11, %r11
mov (%rax), %r14w
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_normal+0x1647f, %r15
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r15)
mfence

// Store
mov $0x6a1, %r12
nop
dec %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
xor $13551, %rax

// Load
lea addresses_PSE+0xcd47, %r9
nop
nop
add $59122, %r15
mov (%r9), %rax
nop
nop
nop
nop
xor $13934, %r9

// Faulty Load
lea addresses_normal+0x1647f, %rax
nop
nop
nop
nop
nop
dec %r12
movups (%rax), %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
