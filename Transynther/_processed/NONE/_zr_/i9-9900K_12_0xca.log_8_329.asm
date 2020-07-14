.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x6c41, %rsi
lea addresses_UC_ht+0xb5cd, %rdi
nop
cmp %rax, %rax
mov $45, %rcx
rep movsl
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x71cd, %rsi
lea addresses_WC_ht+0x18dfd, %rdi
nop
nop
nop
nop
dec %rbx
mov $74, %rcx
rep movsb
nop
nop
nop
inc %rcx
lea addresses_D_ht+0xf5ad, %rbp
nop
nop
nop
xor $27334, %r14
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0xebcd, %r14
nop
nop
nop
lfence
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
add $46979, %rsi
lea addresses_WC_ht+0x1c635, %rbp
nop
nop
nop
nop
nop
xor %r14, %r14
movl $0x61626364, (%rbp)
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x8aad, %rsi
lea addresses_WC_ht+0xe8cd, %rdi
clflush (%rdi)
nop
and %rdx, %rdx
mov $94, %rcx
rep movsq
nop
xor %rdi, %rdi
lea addresses_A_ht+0x12ecd, %rsi
lea addresses_D_ht+0xacd, %rdi
nop
nop
sub $41352, %rdx
mov $111, %rcx
rep movsq
nop
nop
nop
add $45412, %rdi
lea addresses_WC_ht+0x19c77, %rsi
lea addresses_A_ht+0x1bb75, %rdi
nop
nop
add $2574, %rdx
mov $94, %rcx
rep movsw
nop
nop
sub $6803, %rax
lea addresses_WT_ht+0xaead, %rsi
lea addresses_normal_ht+0x4b37, %rdi
sub $10416, %rax
mov $76, %rcx
rep movsw
and $63971, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rdi

// Load
lea addresses_RW+0x1b769, %rdi
nop
nop
nop
nop
add %r11, %r11
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r14
nop
xor $27197, %rdi

// Store
lea addresses_WT+0x72cd, %r12
nop
dec %r15
movw $0x5152, (%r12)
nop
xor $3512, %r11

// Store
mov $0x22ea6e00000006cd, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_RW+0x1105, %rdi
nop
nop
nop
nop
nop
cmp $12572, %r9
movl $0x51525354, (%rdi)

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
nop
nop
nop
nop
inc %r14

// Load
lea addresses_normal+0xe85d, %r9
nop
nop
nop
xor %r15, %r15
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
and %r15, %r15

// Store
mov $0x7ac0080000000a9b, %r15
nop
nop
nop
nop
sub $46535, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r15)
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_WC+0xbecd, %r14
nop
nop
nop
nop
nop
sub %rbx, %rbx
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
