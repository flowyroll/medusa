.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x409b, %rsi
lea addresses_D_ht+0x1ad5b, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $71, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0xd51b, %rdi
nop
nop
nop
and %r15, %r15
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
xor $50968, %r13
lea addresses_WC_ht+0x5703, %rsi
sub $25577, %r10
movb (%rsi), %r15b
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0xc3eb, %rbx
nop
add $55118, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x6b1b, %r10
nop
inc %rcx
mov (%r10), %r15w
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xb69b, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
nop
and $33233, %rdi
lea addresses_A_ht+0x559b, %rdi
clflush (%rdi)
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
sub $42614, %rsi
lea addresses_UC_ht+0x6a1b, %r10
and $40271, %rbx
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
inc %rcx
lea addresses_WT_ht+0xd7ab, %rsi
lea addresses_D_ht+0x5d1b, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $48, %rcx
rep movsw
nop
nop
nop
xor $60170, %rcx
lea addresses_A_ht+0x1b543, %r13
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%r13)
add %rsi, %rsi
lea addresses_WT_ht+0xd6bb, %rdx
nop
nop
nop
nop
nop
cmp $60067, %rdi
movw $0x6162, (%rdx)
nop
add $50039, %rsi
lea addresses_D_ht+0xcf9d, %rdi
nop
nop
and %r10, %r10
mov (%rdi), %bx
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x8297, %rsi
lea addresses_D_ht+0x18e17, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $84, %rcx
rep movsb
nop
xor %r13, %r13
lea addresses_UC_ht+0x1091b, %rcx
nop
nop
nop
nop
cmp $7123, %r13
mov (%rcx), %edx
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rax
push %rdi

// Store
mov $0x459aa0000000313, %r9
nop
sub %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
xor $23429, %r9

// Store
lea addresses_PSE+0x18f1b, %r9
nop
nop
nop
nop
sub $45711, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movaps %xmm7, (%r9)
nop
nop
nop
nop
nop
sub $28344, %rdi

// Load
lea addresses_D+0x1311b, %rax
nop
nop
nop
nop
sub %r12, %r12
vmovntdqa (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_US+0x1d097, %r9
xor $28690, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%r9)
nop
cmp $50818, %rdi

// Faulty Load
lea addresses_RW+0x1b11b, %r15
nop
nop
add %rdi, %rdi
mov (%r15), %r11w
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'32': 19}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
