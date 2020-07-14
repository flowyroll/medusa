.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x159b5, %rsi
lea addresses_A_ht+0x1bf5b, %rdi
nop
cmp $24053, %r12
mov $24, %rcx
rep movsl
nop
nop
nop
nop
cmp $50429, %r14
lea addresses_WT_ht+0x13f1b, %rsi
lea addresses_normal_ht+0x1a59b, %rdi
nop
nop
add %r9, %r9
mov $88, %rcx
rep movsq
sub $8644, %r9
lea addresses_normal_ht+0xe4f3, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%rdi)
nop
add %rsi, %rsi
lea addresses_WC_ht+0xe51b, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rdi)
nop
nop
add $47694, %rcx
lea addresses_WT_ht+0x509b, %rsi
lea addresses_UC_ht+0x147ef, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $50, %rcx
rep movsl
nop
nop
nop
sub $46487, %rdx
lea addresses_normal_ht+0xdc4, %r9
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xc79b, %r10
nop
nop
sub $31589, %r12
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
xor $61650, %r10
lea addresses_D_ht+0x1a39b, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x1674f, %rsi
lea addresses_normal_ht+0x9e5b, %rdi
nop
dec %rdx
mov $52, %rcx
rep movsw
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1761b, %rbx
nop
nop
nop
nop
sub $12298, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0x18f9b, %r11
clflush (%r11)
nop
nop
nop
and $23998, %rsi
movl $0x51525354, (%r11)
nop
nop
nop
xor $49223, %rbx

// Store
lea addresses_normal+0x1e39b, %rcx
nop
nop
nop
nop
add $709, %rbx
movl $0x51525354, (%rcx)
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_normal+0x1e39b, %r11
nop
nop
nop
mfence
movw $0x5152, (%r11)
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0x1d91b, %r11
nop
nop
nop
nop
add $27243, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
nop
nop
nop
nop
cmp $24723, %r11

// REPMOV
lea addresses_A+0x1849b, %rsi
lea addresses_WT+0x372b, %rdi
clflush (%rdi)
nop
nop
nop
xor %rax, %rax
mov $48, %rcx
rep movsq
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_normal+0x1e39b, %rax
nop
nop
nop
nop
cmp %rcx, %rcx
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
