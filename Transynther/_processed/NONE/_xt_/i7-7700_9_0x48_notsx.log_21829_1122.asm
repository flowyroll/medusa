.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x137c6, %rcx
nop
nop
nop
nop
xor %r9, %r9
mov (%rcx), %r10
add $64943, %r12
lea addresses_D_ht+0x7aba, %rdx
nop
and %rax, %rax
movw $0x6162, (%rdx)
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0xd2ba, %rax
nop
nop
nop
nop
add $46505, %r9
movb $0x61, (%rax)
nop
nop
nop
add $45465, %rax
lea addresses_D_ht+0x1ceea, %rsi
lea addresses_WC_ht+0x1592a, %rdi
nop
nop
inc %r9
mov $77, %rcx
rep movsw
nop
sub $16938, %rdx
lea addresses_normal_ht+0xb13a, %rsi
nop
nop
nop
nop
nop
add %rbp, %rbp
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rax
nop
xor $29258, %rcx
lea addresses_D_ht+0x142ba, %rsi
lea addresses_UC_ht+0x1a2ba, %rdi
nop
nop
nop
nop
dec %r9
mov $57, %rcx
rep movsq
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x4f10, %rsi
lea addresses_WT_ht+0x1263a, %rdi
nop
nop
and %rax, %rax
mov $60, %rcx
rep movsl
nop
nop
nop
nop
sub $31258, %rdi
lea addresses_WT_ht+0x802a, %rdi
nop
nop
sub $50704, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
cmp $19159, %r12
lea addresses_A_ht+0xc56a, %rdi
nop
sub %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdi)
inc %rdx
lea addresses_D_ht+0x175ba, %r12
nop
nop
nop
add $24948, %rcx
movl $0x61626364, (%r12)
nop
nop
nop
inc %r12
lea addresses_WT_ht+0xf9ea, %rcx
nop
nop
nop
nop
nop
inc %rdx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
and $55750, %r12
lea addresses_A_ht+0x1c316, %rbp
nop
dec %r12
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %r10
add $14766, %rax
lea addresses_UC_ht+0x14fba, %rsi
lea addresses_WC_ht+0x70ca, %rdi
clflush (%rsi)
sub %rdx, %rdx
mov $74, %rcx
rep movsl
nop
nop
inc %r10
lea addresses_A_ht+0x9b8a, %r12
nop
nop
nop
xor $15459, %rsi
mov (%r12), %ecx
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x1b7ba, %r9
nop
nop
xor %rdx, %rdx
mov (%r9), %bp
nop
nop
cmp $36993, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rdi

// Store
lea addresses_normal+0x4afa, %r11
nop
nop
nop
nop
nop
sub $16180, %r9
movb $0x51, (%r11)
nop
nop
nop
nop
sub $20877, %rdi

// Store
lea addresses_WC+0x174ba, %rax
nop
nop
xor $50837, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%rax)
xor $45559, %r9

// Store
lea addresses_RW+0x125ba, %r10
nop
dec %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_normal+0x143ba, %r11
nop
add %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r11)
sub %r10, %r10

// Load
lea addresses_RW+0x1bfa, %rdi
add $37378, %r10
movb (%rdi), %al
nop
nop
inc %rdi

// Store
lea addresses_WT+0x103ba, %r9
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r9)
nop
sub $12139, %r13

// Faulty Load
lea addresses_RW+0x12ba, %rax
nop
inc %r13
mov (%rax), %ebp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_normal', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_RW', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
