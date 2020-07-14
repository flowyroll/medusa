.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x68bb, %rsi
lea addresses_A_ht+0x40ab, %rdi
nop
sub %rbp, %rbp
mov $122, %rcx
rep movsl
nop
inc %r9
lea addresses_WT_ht+0x14a9b, %rsi
lea addresses_D_ht+0x141ab, %rdi
nop
nop
nop
nop
add $50874, %r8
mov $110, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x2baf, %rsi
lea addresses_D_ht+0x54ab, %rdi
nop
nop
xor %r9, %r9
mov $55, %rcx
rep movsb
nop
sub %r8, %r8
lea addresses_WC_ht+0x1a60b, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rcx
nop
xor %r8, %r8
lea addresses_WT_ht+0xe1a6, %rsi
inc %rbx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
sub $8626, %rbp
lea addresses_WT_ht+0x1c8ab, %rdi
nop
nop
nop
nop
sub $12425, %rsi
movb (%rdi), %bl
add %r9, %r9
lea addresses_UC_ht+0x1eb2b, %rsi
lea addresses_D_ht+0x3393, %rdi
nop
and %rdx, %rdx
mov $81, %rcx
rep movsw
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0xdf8b, %rdi
sub %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x8ab, %r9
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
mov $0x510b9300000000ab, %rdi
nop
nop
and %rbp, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_US+0xcef3, %rdi
nop
nop
nop
and $6685, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
nop
and $18933, %rcx

// Store
lea addresses_US+0x16c8b, %rsi
nop
nop
nop
nop
and $49629, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovaps %ymm2, (%rsi)
nop
nop
add %rcx, %rcx

// Store
mov $0xaab, %rcx
xor $20645, %rsi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
mov $0xfaf4b00000009eb, %r9
nop
sub %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_D+0x11aff, %rax
nop
nop
nop
inc %rsi
movw $0x5152, (%rax)
nop
nop
nop
xor $50726, %rdi

// Store
lea addresses_RW+0x1bb2b, %rdi
clflush (%rdi)
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rdi)

// Exception!!!
nop
nop
mov (0), %r12
nop
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
mov $0x510b9300000000ab, %rsi
nop
nop
xor $37847, %rdi
mov (%rsi), %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'00': 1}
00
*/
