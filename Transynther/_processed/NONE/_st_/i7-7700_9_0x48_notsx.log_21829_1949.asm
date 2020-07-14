.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e050, %rsi
lea addresses_D_ht+0x1b850, %rdi
nop
nop
nop
nop
and $35431, %rbp
mov $49, %rcx
rep movsl
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x89d0, %rsi
lea addresses_UC_ht+0xd650, %rdi
clflush (%rsi)
nop
nop
nop
dec %r11
mov $74, %rcx
rep movsq
sub $23654, %rcx
lea addresses_A_ht+0x50, %r12
nop
nop
cmp $33880, %r15
mov (%r12), %cx
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x1ec50, %rsi
nop
nop
nop
nop
add %r12, %r12
movl $0x61626364, (%rsi)
nop
sub $55014, %r12
lea addresses_normal_ht+0x11050, %rsi
lea addresses_WC_ht+0x3a50, %rdi
nop
nop
nop
add %rbp, %rbp
mov $101, %rcx
rep movsq
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0xf7e4, %rbp
nop
sub %r15, %r15
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x6450, %rsi
lea addresses_WC_ht+0xee32, %rdi
nop
nop
nop
add %r8, %r8
mov $12, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x162ba, %rsi
lea addresses_A_ht+0xe040, %rdi
dec %r12
mov $99, %rcx
rep movsl
nop
and $50680, %r12
lea addresses_D_ht+0x9450, %rsi
lea addresses_D_ht+0x8050, %rdi
nop
nop
add $30894, %r12
mov $68, %rcx
rep movsq
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x7850, %rsi
lea addresses_A_ht+0x12e50, %rdi
nop
add $10804, %rbp
mov $122, %rcx
rep movsl
add $28154, %r8
lea addresses_WT_ht+0x236, %r15
nop
nop
nop
nop
cmp $29836, %r8
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1a90, %rsi
lea addresses_UC_ht+0x9038, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $60, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x13594, %r8
clflush (%r8)
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%r8)
nop
and $12598, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WC+0x18450, %r14
nop
nop
nop
nop
nop
add $38447, %rsi
movups (%r14), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
cmp $25591, %r14

// Store
lea addresses_A+0x1e390, %r13
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
sub %rax, %rax

// REPMOV
lea addresses_normal+0x62c, %rsi
lea addresses_WT+0xb050, %rdi
cmp %r8, %r8
mov $68, %rcx
rep movsq
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_A+0x17210, %r14
clflush (%r14)
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r14)
nop
nop
xor $36041, %r8

// Store
lea addresses_A+0x2b8, %rdi
nop
nop
nop
sub $21954, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rdi)
and $28463, %r13

// Faulty Load
lea addresses_WT+0xb050, %r14
clflush (%r14)
nop
nop
nop
xor $57242, %r8
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
