.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ad9b, %rbp
nop
nop
nop
dec %r14
movl $0x61626364, (%rbp)
nop
nop
cmp $65224, %r11
lea addresses_normal_ht+0x5d2e, %rsi
lea addresses_WC_ht+0x9b9b, %rdi
nop
nop
nop
inc %r8
mov $109, %rcx
rep movsl
nop
add %rax, %rax
lea addresses_D_ht+0x1c79b, %rsi
lea addresses_WC_ht+0x1be53, %rdi
nop
nop
nop
cmp $6295, %r8
mov $106, %rcx
rep movsq
nop
nop
nop
cmp $3597, %rbp
lea addresses_UC_ht+0x8b9b, %rsi
lea addresses_WC_ht+0x1b79b, %rdi
nop
nop
add %rax, %rax
mov $37, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x1239b, %rsi
lea addresses_normal_ht+0xb94b, %rdi
dec %r8
mov $33, %rcx
rep movsq
add %rbp, %rbp
lea addresses_A_ht+0x6d9b, %rsi
lea addresses_WT_ht+0x19e9b, %rdi
nop
cmp %r11, %r11
mov $80, %rcx
rep movsq
nop
nop
nop
inc %rdi
lea addresses_D_ht+0xe56b, %rsi
lea addresses_A_ht+0xcf9b, %rdi
nop
nop
and %rax, %rax
mov $83, %rcx
rep movsw
nop
nop
cmp $58639, %rsi
lea addresses_UC_ht+0xd19b, %r11
nop
nop
nop
nop
xor %r14, %r14
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
inc %rbp
lea addresses_WC_ht+0x19a29, %rax
nop
nop
nop
nop
nop
cmp $52368, %rdi
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xe86b, %rsi
lea addresses_normal_ht+0xa19b, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rax, %rax
mov $73, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $23971, %rcx
lea addresses_WC_ht+0x1f9b, %rax
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x61, (%rax)
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x152e3, %r11
nop
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r11)
nop
cmp $33509, %r8
lea addresses_A_ht+0x709b, %r14
nop
nop
nop
nop
nop
and $5609, %rsi
movw $0x6162, (%r14)
nop
nop
nop
nop
add $34920, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_UC+0x1cb9b, %r8
nop
nop
nop
xor $20539, %rax
movntdqa (%r8), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'46': 1049, '44': 2, '48': 2, '47': 113, '45': 16955, '00': 3615, '49': 93}
00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 47 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 49 00 00 00 00 00 45 00 00 45 00 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 00 45 00 45 00 00 00 45 45 45 45 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 00 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 00 45 45 45 45 45 00 00 45 00 45 45 45 00 45 00 00 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 46 45 45 45 45 46 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 49 00 46 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 00 46 00 46 46 46 46 46 45 46 47 00 00 00 00 00 00 00 00 49 49 48 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 46 45 46 47 00 46 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 47 00 00 00 00 00 00 00 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 46 45 45 45 45 45 45 45 46 46 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 47 00 00 47 00 00 00 45 00 00 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 00 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 46 46 45 45 45 46 45 45 45 46 47 00 46 00 00 00 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45
*/
