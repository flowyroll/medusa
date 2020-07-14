.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x36e2, %rbx
clflush (%rbx)
nop
nop
cmp %r12, %r12
mov (%rbx), %r13w
nop
nop
nop
nop
nop
cmp $38736, %rcx
lea addresses_D_ht+0xea5a, %rsi
lea addresses_WC_ht+0x106a2, %rdi
nop
nop
nop
add $28824, %r14
mov $55, %rcx
rep movsw
lfence
lea addresses_UC_ht+0x2aa2, %rsi
lea addresses_D_ht+0x1eea2, %rdi
nop
and $27401, %r10
mov $109, %rcx
rep movsl
add $45259, %r13
lea addresses_UC_ht+0xc2a2, %rbx
nop
nop
nop
inc %r14
movl $0x61626364, (%rbx)
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x1bda2, %rsi
xor %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
and $65164, %rcx
lea addresses_normal_ht+0x19b2, %rsi
lea addresses_A_ht+0x4e22, %rdi
nop
nop
nop
nop
nop
xor $34220, %r10
mov $3, %rcx
rep movsl
and %rsi, %rsi
lea addresses_A_ht+0x7646, %rsi
lea addresses_A_ht+0xea2, %rdi
nop
xor $58002, %r14
mov $103, %rcx
rep movsw
nop
nop
nop
nop
nop
and $47777, %rsi
lea addresses_D_ht+0x9222, %rsi
nop
nop
nop
nop
cmp $23843, %r10
movb $0x61, (%rsi)
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x1d9e2, %rsi
lea addresses_UC_ht+0x1b8a2, %rdi
nop
nop
nop
inc %r12
mov $39, %rcx
rep movsb
nop
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0xb4e2, %rdi
nop
and %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rdi)
sub $31289, %r13
lea addresses_normal_ht+0x1e4b2, %rsi
lea addresses_WC_ht+0x2a2, %rdi
nop
nop
add $56555, %r14
mov $50, %rcx
rep movsw
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x662, %r13
and $15816, %rcx
mov (%r13), %bx
nop
nop
nop
cmp $5474, %rbx
lea addresses_D_ht+0x1da22, %rsi
nop
nop
nop
nop
add $41164, %rbx
mov (%rsi), %edi
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x9642, %rsi
lea addresses_UC_ht+0xdf82, %rdi
nop
nop
nop
cmp $51529, %r14
mov $119, %rcx
rep movsl
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x1b2a2, %r10
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%r10)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_PSE+0x18ea2, %rdx
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
mov $0x7f27c700000002a2, %r11
nop
nop
add %rcx, %rcx
mov (%r11), %ax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'00': 116, '58': 67}
00 58 00 00 00 58 00 00 58 00 58 00 00 58 58 00 00 58 00 58 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 58 00 00 58 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 58 00 58 58 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 58 58 00 58 58 00 00 00 00 58 58 58 00 00 00 58 00 00 00 00 58 00 58 00 00 00 58 00 58 58 58 00 58 58 00 00 58 58 58 00 58 58 00 58 00 58 58 00 58 58 00 58 00 58 58 00 00 58 00 00 00 00 00 00 00 00 58 58 58 00 00 00 58 00 58 58 00 00 58 00 58 00 00 00 58 00 58 00 58 00
*/
