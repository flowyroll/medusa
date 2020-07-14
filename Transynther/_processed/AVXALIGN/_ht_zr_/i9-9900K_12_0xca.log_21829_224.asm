.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x11587, %r14
clflush (%r14)
nop
and $58583, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r14)
nop
nop
add $60388, %rax
lea addresses_A_ht+0x5417, %rsi
lea addresses_A_ht+0x1e017, %rdi
nop
add $27931, %rdx
mov $59, %rcx
rep movsq
nop
nop
nop
nop
nop
add $33496, %rsi
lea addresses_WT_ht+0x1ba17, %rsi
lea addresses_UC_ht+0x1d617, %rdi
nop
nop
nop
dec %rdx
mov $108, %rcx
rep movsq
xor $58258, %rdi
lea addresses_A_ht+0x17e17, %r14
sub %rax, %rax
mov (%r14), %rdi
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x14d17, %rsi
lea addresses_A_ht+0xf617, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rax, %rax
mov $116, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x3bf7, %r14
nop
nop
nop
nop
and %rsi, %rsi
mov (%r14), %r9w
nop
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x877, %rsi
lea addresses_WT_ht+0xb403, %rdi
nop
nop
and $2984, %r13
mov $50, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_normal_ht+0x2cb7, %rdx
nop
nop
nop
sub $43469, %rdi
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x14817, %rsi
lea addresses_A_ht+0x15817, %rdi
xor $36131, %rdx
mov $4, %rcx
rep movsw
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x61e3, %rdi
nop
nop
nop
nop
nop
sub $22303, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0xcbf, %rsi
clflush (%rsi)
nop
nop
nop
nop
add %rcx, %rcx
mov (%rsi), %rax
nop
nop
nop
xor $27356, %rsi
lea addresses_UC_ht+0x12217, %rcx
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %rcx
vmovaps %ymm3, (%rcx)
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rdi

// Load
lea addresses_RW+0xea17, %r15
nop
nop
nop
nop
nop
dec %rbp
mov (%r15), %edi
add $52756, %r14

// Store
mov $0x497, %r11
nop
nop
nop
cmp $13623, %r9
movl $0x51525354, (%r11)
nop
nop
and %r9, %r9

// Store
lea addresses_A+0x10d12, %r13
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r13)
cmp %rbp, %rbp

// Store
lea addresses_A+0x15893, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
add $40622, %r13

// Faulty Load
mov $0xa17, %r11
nop
nop
sub %r13, %r13
movaps (%r11), %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'45': 9522, '49': 3388, '48': 1170, '00': 3167, '46': 4582}
49 45 45 49 45 45 45 45 45 49 45 49 00 45 45 45 46 45 46 45 46 48 45 45 49 00 46 46 45 46 00 49 46 45 45 45 45 45 45 45 45 45 45 45 45 49 46 00 46 45 46 00 45 49 48 45 00 46 00 00 46 49 46 00 49 00 45 45 46 46 45 45 46 00 46 49 45 45 00 00 45 45 48 00 46 00 46 45 49 45 45 45 00 45 00 48 45 46 45 46 48 45 49 45 49 45 45 45 45 46 00 45 45 46 49 00 45 45 45 49 46 00 46 00 46 45 45 45 46 49 48 45 45 46 00 45 49 45 49 45 45 46 00 45 45 00 00 45 45 49 46 00 46 00 46 45 46 45 45 45 45 49 45 46 00 45 45 46 45 46 45 45 45 49 48 00 46 00 46 45 46 00 45 45 48 45 46 46 48 45 45 45 48 00 46 45 46 00 45 49 00 45 48 00 46 49 49 45 45 48 00 46 49 49 45 45 45 49 00 46 49 45 45 45 45 45 45 48 45 46 45 45 46 00 46 45 45 45 49 49 00 45 00 49 46 00 46 45 46 48 45 45 48 45 46 46 45 46 00 46 00 45 00 45 49 00 45 00 45 45 45 49 48 00 46 45 46 00 46 48 45 45 45 45 48 48 45 46 00 46 45 46 00 45 49 45 45 46 49 45 45 46 00 46 45 46 48 45 45 48 45 46 46 45 45 45 46 45 45 45 46 49 00 46 00 46 00 45 00 46 45 46 00 45 45 45 46 45 46 48 45 45 49 00 00 46 48 45 45 45 45 46 45 46 00 49 45 45 45 46 00 45 45 45 46 00 45 45 45 45 45 45 46 00 45 45 45 48 45 46 45 45 46 00 46 49 46 48 45 49 45 45 46 45 45 46 00 45 45 45 49 00 49 45 45 49 49 49 46 48 45 46 45 46 46 45 45 46 00 49 00 45 46 45 49 45 00 49 45 48 45 46 48 45 49 45 49 46 00 45 45 45 45 45 00 00 46 00 00 46 45 46 00 45 45 45 48 45 46 46 45 49 00 45 45 45 49 00 45 49 46 46 45 46 00 45 49 49 45 49 49 00 45 45 49 46 49 46 00 45 45 45 46 00 45 49 45 49 49 00 45 49 49 49 45 45 45 45 45 00 46 45 45 46 49 46 00 46 48 45 45 45 49 46 45 45 45 46 00 45 45 46 00 45 45 49 45 46 00 46 45 46 48 49 45 45 48 45 49 49 45 45 45 45 45 48 45 46 46 45 46 00 45 49 00 46 46 45 46 00 49 45 46 45 46 46 45 49 46 45 46 00 45 49 45 00 45 49 46 00 45 45 45 45 45 46 49 49 49 45 45 45 48 45 46 00 49 45 45 46 00 45 45 46 45 46 49 45 45 46 49 45 45 45 46 45 46 45 45 46 00 46 45 46 00 49 49 45 00 00 46 49 45 45 49 45 45 45 45 49 00 46 48 45 45 45 45 45 45 49 45 45 45 45 45 45 45 48 48 45 49 45 48 00 46 00 46 49 46 48 45 45 49 00 45 45 49 45 48 00 46 49 49 49 45 46 45 46 46 45 49 45 48 00 46 45 46 00 45 45 45 46 45 46 49 45 45 49 45 46 45 45 46 45 45 45 46 45 46 49 49 45 45 49 45 00 45 45 49 49 45 46 00 45 45 45 45 45 46 45 46 48 45 45 45 46 00 46 45 46 48 45 45 49 00 45 46 00 45 00 45 45 46 00 45 45 45 45 45 00 46 00 46 00 45 49 00 46 00 45 48 45 49 45 45 49 45 45 45 45 46 45 00 45 49 45 45 46 00 45 45 46 49 48 00 46 45 00 46 45 46 00 45 45 49 45 48 45 49 45 49 45 45 45 45 45 45 00 46 48 49 49 45 45 45 49 45 45 46 45 00 45 48 49 00 45 48 45 45 45 45 45 45 45 46 00 46 00 00 46 00 45 00 46 49 49 49 45 00 48 46 00 46 48 45 00 00 46 48 49 46 00 45 45 45 00 46 45 45 45 49 46 00 45 45 45 49 45 45 46 00 45 49 45 00 45 49 46 00 46 45 46 00 45 49 45 45 46 45 00 46 48 49 49 00 45 00 46 45 49 45 49 49 45 46 00 46 00 45 46 00 46 45 45 49 45 45 46 46 45 49 45 45 45 45 46 00 45 45 45 46 00 49 45 46 45 46 45 45 45 45 45 48 00 46 00 46 49 46 00 45 45 48 45 46 45 45 49 45 48
*/
