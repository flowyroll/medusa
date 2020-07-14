.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2d20, %r12
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x3c3e, %rsi
lea addresses_UC_ht+0x1172c, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $39311, %rax
mov $54, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x6100, %rbx
cmp $5622, %r12
mov (%rbx), %esi
nop
nop
add $36555, %rcx
lea addresses_WC_ht+0x1a8b4, %rsi
lea addresses_UC_ht+0x105e8, %rdi
nop
nop
inc %r14
mov $3, %rcx
rep movsb
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x8f00, %rax
nop
nop
inc %rbx
mov (%rax), %ecx
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x14900, %r14
nop
add %r11, %r11
mov (%r14), %cx
nop
nop
cmp $42754, %rsi
lea addresses_normal_ht+0x2100, %r14
nop
nop
nop
nop
cmp $41689, %rax
movb (%r14), %r12b
sub %rbx, %rbx
lea addresses_D_ht+0x39c4, %rax
nop
nop
nop
nop
dec %rcx
movups (%rax), %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
nop
add $32716, %rcx
lea addresses_D_ht+0xdb40, %r12
nop
nop
cmp $17424, %r11
mov (%r12), %cx
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x1360, %r11
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r11)
nop
nop
inc %rbx
lea addresses_D_ht+0x11de0, %r11
nop
nop
nop
nop
nop
xor $15383, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0xa100, %rsi
lea addresses_normal_ht+0xdc58, %rdi
nop
nop
cmp %rax, %rax
mov $94, %rcx
rep movsl
nop
and $4972, %rax
lea addresses_normal_ht+0x19100, %rsi
nop
nop
nop
cmp %r12, %r12
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0xf118, %rcx
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
and $43695, %rdi
lea addresses_UC_ht+0xd900, %rax
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
cmp $57307, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x11d17, %r8
nop
xor %rsi, %rsi
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_US+0x16100, %r8
nop
nop
nop
nop
sub %r13, %r13
movntdqa (%r8), %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
