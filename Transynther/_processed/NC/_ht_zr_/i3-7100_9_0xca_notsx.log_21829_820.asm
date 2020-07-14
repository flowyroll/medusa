.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x176f4, %rsi
lea addresses_UC_ht+0xdf34, %rdi
nop
nop
xor $12555, %rax
mov $65, %rcx
rep movsl
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0xa1f4, %rsi
nop
dec %r12
mov (%rsi), %ax
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0xf474, %rbx
nop
inc %rax
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
sub $39083, %rdi
lea addresses_D_ht+0x17c28, %r12
nop
nop
nop
nop
add $54872, %rbp
movb $0x61, (%r12)
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x112f4, %rdi
nop
add $30441, %rbx
mov (%rdi), %ebp
nop
nop
nop
inc %rbp
lea addresses_A_ht+0xdd34, %rcx
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rcx)
and $50642, %rax
lea addresses_D_ht+0x196f4, %rsi
lea addresses_D_ht+0x1b5dc, %rdi
clflush (%rdi)
nop
nop
cmp $27112, %r8
mov $67, %rcx
rep movsq
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x379c, %rsi
lea addresses_A_ht+0x130b4, %rdi
nop
add $6696, %rbp
mov $117, %rcx
rep movsb
sub $45797, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi

// Store
lea addresses_PSE+0x4774, %rdi
nop
nop
nop
nop
add $60041, %rbx
movw $0x5152, (%rdi)
nop
add $34114, %rcx

// Faulty Load
mov $0x309a600000000ef4, %r8
nop
xor %r14, %r14
movups (%r8), %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'45': 1447, '48': 630, '00': 869, '49': 6611, '46': 12272}
00 49 49 49 49 49 49 45 46 46 49 46 46 46 46 45 46 46 46 46 49 49 49 46 46 49 49 49 49 49 49 46 46 48 49 49 49 49 49 49 45 48 49 49 49 49 49 49 49 49 46 46 45 48 49 49 49 49 49 49 49 49 45 46 46 49 49 46 00 49 49 49 49 46 46 49 45 48 49 46 46 46 00 46 48 49 49 49 49 49 49 45 46 49 49 45 46 46 46 46 49 49 49 49 49 49 49 45 46 46 46 46 46 49 49 45 48 46 45 46 46 46 46 46 49 49 45 49 49 49 49 49 46 46 46 46 46 46 46 46 46 46 00 49 45 48 49 49 49 46 46 46 46 49 45 46 46 46 46 00 49 45 00 49 46 46 46 49 49 49 46 46 46 46 49 49 45 46 46 00 49 49 45 46 46 49 45 46 46 46 48 46 45 46 46 46 46 46 46 45 46 49 49 49 46 46 46 49 49 49 49 49 49 49 46 46 49 49 49 49 49 45 46 00 49 45 46 46 46 46 46 46 46 46 00 49 46 46 46 00 49 46 46 46 00 49 49 49 49 49 49 49 49 49 46 46 46 46 48 49 45 48 46 46 46 46 49 49 45 46 46 46 49 45 46 46 46 46 46 46 46 46 46 46 00 49 49 49 49 46 45 46 46 49 49 46 46 46 46 49 49 49 49 49 49 49 49 49 49 49 46 46 46 46 46 46 49 49 45 46 45 46 46 49 49 49 00 46 00 48 49 46 49 00 46 45 49 49 49 49 45 46 46 49 49 49 49 49 46 49 48 46 00 49 49 49 49 46 49 49 49 46 49 48 00 49 46 48 49 00 49 49 00 48 46 46 46 49 48 48 49 48 48 46 49 48 48 46 49 49 49 46 49 49 49 46 49 49 48 48 49 00 49 46 48 00 46 49 49 49 46 00 00 46 49 48 49 49 49 00 46 49 49 46 49 46 49 46 46 49 46 49 46 49 49 46 49 00 49 49 48 48 49 48 46 46 00 46 49 49 46 48 45 46 49 48 00 49 49 48 46 49 00 46 48 46 49 49 46 46 49 46 46 49 49 48 48 48 46 00 49 49 49 46 46 46 00 46 00 49 49 49 49 49 45 48 49 49 46 49 49 46 46 49 49 49 49 46 00 49 49 48 00 46 49 00 49 46 46 00 45 48 00 48 49 49 46 49 46 49 46 48 46 46 48 46 46 46 49 46 46 49 00 46 46 46 46 46 48 49 46 46 49 46 46 46 46 46 48 49 46 00 49 46 49 46 00 49 46 49 46 46 46 49 46 46 00 49 46 49 48 46 46 49 46 49 46 46 46 46 49 49 49 46 46 46 46 49 49 46 49 46 46 49 46 46 46 49 46 46 46 49 46 46 48 46 48 46 48 46 46 49 46 48 49 49 49 46 46 46 46 49 46 46 46 48 46 46 46 49 46 46 46 46 46 46 48 49 46 46 46 46 49 49 49 45 46 46 00 48 46 00 49 45 48 46 46 46 49 46 46 46 46 46 46 46 46 46 48 46 49 49 46 46 49 49 46 46 00 49 46 46 46 49 49 46 46 46 46 46 46 49 45 46 46 46 46 46 46 46 49 45 46 46 46 46 46 46 46 46 46 49 45 46 46 49 49 46 46 46 46 46 46 46 46 46 49 49 46 46 46 46 46 46 46 00 48 46 46 00 49 46 46 46 46 46 46 46 46 49 46 46 49 46 00 49 45 46 49 49 46 46 46 46 46 46 46 46 46 49 45 46 46 46 46 49 46 46 46 46 46 49 49 45 45 46 49 45 46 46 49 46 46 46 49 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 46 46 49 49 49 49 45 46 46 46 46 46 46 49 45 46 46 00 49 45 48 46 46 46 46 00 49 49 49 45 46 46 49 49 49 45 46 46 46 49 49 45 46 46 46 46 00 46 46 46 00 49 45 46 46 46 45 46 46 46 49 49 49 46 46 46 46 46 49 49 46 46 46 46 46 46 49 49 49 46 46 46 46 49 45 48 46 46 46 46 46 00 49 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 45 48 46 45 46 00 49 49 45 00 49 49 49 49 49 49 49 49 49 49 46 46 45 00 46 46 46 46 46 46 46 00 46 00 49 49 46 00 49 49 49 49 49 49 49 46 46 46 46 49 46 49 45 48 46 46 00 49 49 49 49 46 46 46 46 46
*/
