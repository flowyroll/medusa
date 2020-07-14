.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc2fa, %r10
nop
nop
nop
nop
cmp $35022, %rdi
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x1399a, %rax
nop
nop
nop
nop
cmp $31355, %rbp
movw $0x6162, (%rax)
nop
nop
add $7099, %rbp
lea addresses_A_ht+0xaa7a, %rdi
nop
xor $23965, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
inc %r13
lea addresses_A_ht+0x8482, %r13
nop
add $8077, %rsi
mov (%r13), %rcx
nop
nop
nop
nop
nop
cmp $61408, %rax
lea addresses_WT_ht+0x104fa, %r10
nop
nop
nop
sub $23026, %rdi
movw $0x6162, (%r10)
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x962a, %rsi
clflush (%rsi)
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
nop
sub $12692, %r13
lea addresses_A_ht+0x16cfa, %r10
cmp %rsi, %rsi
movb (%r10), %cl
nop
nop
cmp $54905, %rcx
lea addresses_D_ht+0x1b6fa, %rcx
nop
cmp $474, %rbp
mov (%rcx), %r10w
nop
inc %r13
lea addresses_WC_ht+0xa6fa, %r13
nop
nop
nop
nop
nop
and %r10, %r10
mov (%r13), %esi
nop
dec %rdi
lea addresses_A_ht+0xa07a, %rsi
lea addresses_normal_ht+0x51fa, %rdi
nop
nop
nop
nop
xor $27429, %rbp
mov $22, %rcx
rep movsq
nop
nop
add $23447, %rcx
lea addresses_WT_ht+0xc00a, %rcx
nop
nop
nop
nop
dec %rsi
movb $0x61, (%rcx)
and %rsi, %rsi
lea addresses_normal_ht+0x70fa, %rsi
nop
nop
sub $43292, %r10
movl $0x61626364, (%rsi)
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x198fa, %rsi
nop
nop
nop
add %r12, %r12
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
nop
dec %r12

// Load
mov $0x1880bd0000000fba, %rsi
nop
nop
nop
sub $63751, %r12
movb (%rsi), %r11b
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_US+0x176dd, %rdi
nop
nop
dec %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_PSE+0xaafa, %r12
nop
xor %rdx, %rdx
movb (%r12), %r11b
nop
sub $28843, %r11

// Store
mov $0x8fa, %r11
clflush (%r11)
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
nop
add $4096, %r14

// Faulty Load
lea addresses_normal+0x110fa, %rdx
inc %r12
movb (%rdx), %bl
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'34': 14}
34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
