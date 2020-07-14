.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x112c0, %r14
nop
nop
nop
nop
nop
and $56551, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
cmp $32092, %r8
lea addresses_D_ht+0xf1e0, %rsi
lea addresses_D_ht+0x121c0, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $6168, %rdx
mov $91, %rcx
rep movsb
nop
xor %rdx, %rdx
lea addresses_A_ht+0x11240, %rsi
lea addresses_WT_ht+0x9bc8, %rdi
nop
and $49853, %rax
mov $0, %rcx
rep movsb
nop
nop
and $45190, %rsi
lea addresses_normal_ht+0x1040, %rdi
xor %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %rdi
movntdq %xmm3, (%rdi)
nop
nop
nop
nop
nop
and $25683, %rbx
lea addresses_normal_ht+0x6640, %rsi
lea addresses_UC_ht+0x1a040, %rdi
nop
nop
nop
nop
cmp $51931, %r14
mov $85, %rcx
rep movsq
sub $32352, %rcx
lea addresses_A_ht+0x4d40, %rsi
lea addresses_D_ht+0x2c98, %rdi
nop
and $41941, %rax
mov $71, %rcx
rep movsb
nop
cmp %rax, %rax
lea addresses_normal_ht+0x15a40, %rdx
nop
add %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%rdx)
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x2900, %rsi
lea addresses_UC_ht+0x10bbc, %rdi
nop
nop
xor $36735, %r8
mov $54, %rcx
rep movsw
nop
inc %rsi
lea addresses_WT_ht+0x1ea40, %rsi
nop
nop
nop
xor $1264, %r8
mov (%rsi), %r14
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xa0c0, %r14
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x11340, %r8
nop
inc %rsi
movb (%r8), %al
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x6e40, %rax
sub $43733, %rcx
mov (%rax), %r8
nop
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rdi

// Store
lea addresses_D+0x5300, %r12
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
and $16383, %r10

// Store
lea addresses_RW+0x1be40, %r10
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
nop
nop
nop
sub $18514, %r12

// Store
lea addresses_PSE+0x17e40, %r13
nop
nop
inc %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_PSE+0x17e40, %r13
nop
nop
nop
nop
cmp $19050, %r14
mov (%r13), %di
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'58': 252}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
