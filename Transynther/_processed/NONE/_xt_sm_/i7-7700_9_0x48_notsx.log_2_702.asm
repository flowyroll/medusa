.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xad41, %rsi
lea addresses_normal_ht+0x1554b, %rdi
nop
nop
and %rbx, %rbx
mov $96, %rcx
rep movsb
nop
nop
nop
xor $28866, %r8
lea addresses_D_ht+0x1452d, %rdx
add %r10, %r10
movw $0x6162, (%rdx)
nop
nop
nop
nop
sub $959, %rcx
lea addresses_D_ht+0x2721, %rsi
lea addresses_WT_ht+0x1926b, %rdi
nop
sub %rdx, %rdx
mov $45, %rcx
rep movsq
nop
nop
sub $21518, %rbx
lea addresses_D_ht+0xb721, %rbx
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rbx), %r10w
and $35587, %rdi
lea addresses_normal_ht+0x421, %rsi
lea addresses_A_ht+0x19c99, %rdi
clflush (%rdi)
nop
nop
and %rax, %rax
mov $99, %rcx
rep movsl
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xfa1c, %rsi
lea addresses_A_ht+0x3ba1, %rdi
nop
nop
nop
and %r8, %r8
mov $30, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x154a9, %rsi
lea addresses_A_ht+0xa841, %rdi
nop
nop
nop
nop
nop
sub $31608, %rbx
mov $123, %rcx
rep movsw
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x1aa21, %r10
nop
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %r10
movaps %xmm3, (%r10)
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_US+0xbd21, %rsi
clflush (%rsi)
nop
sub %r9, %r9
movb $0x51, (%rsi)
nop
and %r8, %r8

// Load
lea addresses_A+0x1c7a1, %r12
nop
nop
nop
nop
cmp $16546, %r13
movb (%r12), %dl
nop
nop
xor %rdx, %rdx

// Store
lea addresses_normal+0x17a3d, %rax
nop
nop
nop
nop
add $43001, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_D+0x10701, %rdx
nop
nop
nop
nop
nop
sub %r9, %r9
movb $0x51, (%rdx)
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0x15be9, %r9
nop
xor $57516, %r12
movb $0x51, (%r9)
inc %r8

// Store
lea addresses_A+0x2521, %r8
nop
nop
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%r8)
nop
nop
cmp $18620, %r8

// Store
lea addresses_PSE+0x4021, %rdx
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
sub $63605, %r12

// Store
lea addresses_A+0x3549, %r13
nop
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r13)
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_WT+0x1e659, %r13
inc %r12
movw $0x5152, (%r13)
nop
nop
nop
nop
xor $23254, %rdx

// Store
lea addresses_D+0xfd21, %r12
nop
add $48040, %r8
movw $0x5152, (%r12)
nop
nop
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_A+0x2521, %r12
sub $58604, %rax
mov (%r12), %r9d
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'52': 2}
52 52
*/
