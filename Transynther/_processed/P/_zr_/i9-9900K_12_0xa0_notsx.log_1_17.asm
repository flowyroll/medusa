.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xdded, %rsi
lea addresses_WT_ht+0x2169, %rdi
clflush (%rsi)
nop
nop
and %r13, %r13
mov $89, %rcx
rep movsq
nop
nop
nop
nop
cmp $62298, %rdi
lea addresses_WC_ht+0x14d69, %rax
nop
dec %r14
movups (%rax), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x15c79, %rsi
nop
nop
nop
nop
nop
cmp $10898, %rcx
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0xc24d, %rsi
lea addresses_WC_ht+0x6be9, %rdi
nop
nop
nop
nop
nop
add $60423, %r13
mov $18, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $32909, %rcx
lea addresses_D_ht+0xc469, %rsi
lea addresses_UC_ht+0xfd1, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r13, %r13
mov $77, %rcx
rep movsq
inc %r13
lea addresses_normal_ht+0x1ab69, %rax
nop
nop
nop
nop
xor $51122, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
add $13282, %rax
lea addresses_UC_ht+0x19369, %rsi
lea addresses_normal_ht+0x1abfe, %rdi
clflush (%rdi)
nop
nop
nop
and %r13, %r13
mov $19, %rcx
rep movsl
xor $30684, %rsi
lea addresses_WC_ht+0x5969, %rsi
nop
add $37281, %r15
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
add $27989, %r14
lea addresses_A_ht+0xb169, %rax
cmp $47479, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
add $25542, %rsi
lea addresses_WC_ht+0x16169, %rsi
lea addresses_A_ht+0x49e9, %rdi
nop
nop
nop
cmp %r15, %r15
mov $52, %rcx
rep movsb
nop
nop
nop
nop
nop
add $32468, %rdi
lea addresses_D_ht+0x131a9, %r15
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%r15)
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0xc569, %rsi
lea addresses_UC_ht+0xdee1, %rdi
nop
nop
nop
nop
nop
and $21632, %rax
mov $15, %rcx
rep movsq
nop
nop
nop
cmp $36396, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbp
push %rdi

// Faulty Load
mov $0x169, %r11
nop
nop
nop
cmp %r13, %r13
mov (%r11), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdi
pop %rbp
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'00': 1}
00
*/
