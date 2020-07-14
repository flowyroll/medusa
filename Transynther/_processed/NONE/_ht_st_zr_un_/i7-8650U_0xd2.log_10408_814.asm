.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xeb7e, %rdx
nop
inc %r15
movl $0x61626364, (%rdx)
nop
nop
nop
and $49297, %r12
lea addresses_normal_ht+0x607e, %rsi
lea addresses_UC_ht+0x11efe, %rdi
xor %r13, %r13
mov $47, %rcx
rep movsb
nop
nop
add $49116, %r13
lea addresses_A_ht+0xf07e, %r13
nop
nop
nop
add %rdx, %rdx
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rsi
cmp $32148, %r12
lea addresses_normal_ht+0x1d67e, %rsi
lea addresses_WT_ht+0xa87e, %rdi
nop
cmp $36823, %rdx
mov $116, %rcx
rep movsl
nop
nop
nop
nop
and $35059, %rsi
lea addresses_D_ht+0xc7e, %rdx
nop
nop
nop
nop
add $58907, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
xor $26123, %rdi
lea addresses_WC_ht+0x1848e, %r13
clflush (%r13)
nop
sub %rcx, %rcx
movups (%r13), %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
nop
nop
cmp $41393, %r13
lea addresses_WC_ht+0x134fe, %rdi
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x1cc7e, %rsi
lea addresses_A_ht+0x17019, %rdi
clflush (%rsi)
nop
xor $59062, %r13
mov $125, %rcx
rep movsq
nop
add %rsi, %rsi
lea addresses_normal_ht+0xbde, %r13
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x1041a, %r15
nop
nop
nop
nop
xor $58482, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x12d7e, %rcx
add $65202, %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x1dc7e, %rsi
lea addresses_WT_ht+0x1527e, %rdi
nop
nop
nop
sub $56144, %r11
mov $115, %rcx
rep movsq
cmp $23295, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x2076, %r15
nop
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
xor $47035, %rbx

// Store
lea addresses_D+0x1787e, %rax
nop
nop
nop
dec %rdi
movw $0x5152, (%rax)
nop
nop
inc %rsi

// Store
lea addresses_UC+0x1155e, %r15
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_WT+0x447e, %r10
nop
add $9494, %rbx
mov (%r10), %eax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}}
{'00': 6215, 'ff': 2937, '44': 569, '47': 537, '4d': 11, '52': 73, '45': 23, '30': 33, '48': 1, 'c0': 5, '8f': 1, '02': 3}
00 ff ff ff 00 00 ff 00 ff 00 44 ff ff ff ff 44 ff ff 00 44 00 00 00 00 00 00 ff 00 ff 00 00 00 00 44 00 ff 00 00 00 ff 00 ff 47 00 00 ff 00 ff 44 00 00 ff 00 ff ff 00 4d 00 00 00 00 00 ff ff 00 00 ff 00 ff 00 ff ff 00 ff 00 00 00 ff 00 00 ff 00 00 00 00 00 ff 44 47 00 00 44 00 00 ff ff 00 00 47 ff 00 ff ff 00 00 00 ff ff ff ff ff ff 52 ff ff 00 00 00 00 ff 00 00 00 00 ff 00 44 00 ff 00 00 47 00 47 00 ff 00 00 ff 00 00 44 00 00 00 44 00 00 00 00 00 ff 52 00 00 00 ff 00 00 00 00 00 00 00 ff ff ff 00 47 44 00 00 ff ff 44 47 00 00 00 00 00 00 00 ff 44 ff 00 00 00 00 44 47 ff 00 00 00 ff ff 44 00 ff 44 ff ff 44 00 00 00 00 ff 00 ff 00 52 00 52 ff 00 00 ff 00 00 ff ff ff ff ff ff ff 00 00 00 00 44 ff 44 00 00 00 00 47 00 ff 00 00 ff ff 00 00 ff 00 00 00 00 ff 00 ff ff 00 00 00 00 00 00 00 00 00 47 ff ff 00 44 44 00 ff ff ff ff 44 ff 47 ff ff ff ff 00 ff ff 44 ff 00 ff 44 ff 00 ff 00 44 47 00 ff 00 00 ff 00 00 ff 00 00 ff ff 00 52 ff ff 44 ff 00 ff 00 00 45 00 00 00 00 00 00 00 00 00 47 00 47 44 00 00 00 ff ff ff 00 ff 00 00 47 44 00 00 ff ff 44 00 00 44 ff 00 ff 00 ff 00 00 ff ff 00 00 ff 00 00 00 ff 00 00 00 ff 44 ff ff 00 ff 00 00 00 00 00 00 00 00 ff 00 47 00 00 00 00 ff ff 00 00 ff 00 00 00 00 ff ff 00 00 ff 00 47 00 00 00 00 47 44 ff 00 45 00 00 47 ff 44 44 ff 00 ff ff ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 47 00 47 00 00 ff ff ff 00 ff 00 52 00 00 00 ff 00 00 00 00 ff 44 52 00 00 47 00 ff 00 47 00 ff 00 00 00 30 ff ff ff 00 ff ff ff 00 00 ff ff 00 00 47 ff 00 00 00 44 ff 00 ff ff 00 00 00 ff ff 00 00 00 00 00 ff 44 47 00 00 44 00 ff 00 00 00 ff ff 00 00 00 ff ff 00 00 00 ff 00 ff 00 00 00 00 00 00 00 ff ff 44 00 00 00 00 00 00 ff 00 ff ff ff 00 ff ff 00 ff 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 ff ff 00 ff 44 00 00 00 00 ff 00 ff 00 00 00 00 00 44 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 ff 00 00 00 00 00 44 47 ff 44 47 00 47 52 00 00 00 ff 44 44 00 ff ff 00 00 00 ff 44 00 ff 00 ff ff ff ff 00 00 ff 00 47 ff 44 00 00 ff 00 00 ff ff 00 00 00 00 ff ff 00 00 00 00 00 00 ff ff 00 ff 44 ff ff 00 00 ff 00 47 00 ff ff 00 44 00 ff ff ff 00 00 ff 00 00 00 ff ff ff 00 00 00 00 44 00 ff 44 00 47 00 44 00 00 ff ff 00 00 00 00 00 00 47 00 00 00 ff 00 00 ff 44 00 00 00 ff ff 44 ff 00 ff 00 00 00 ff ff 44 00 00 ff ff 00 ff ff 00 ff 00 00 00 00 ff 00 00 47 ff ff 00 00 00 00 00 00 ff 00 ff 00 00 00 00 ff ff 00 47 00 ff ff ff ff 00 00 00 00 ff 00 ff 00 ff ff ff ff 00 ff 00 00 00 00 00 ff ff ff 00 00 00 52 00 ff 00 44 44 ff 00 00 00 ff 00 44 00 44 00 00 47 00 00 00 00 44 ff ff 00 00 44 47 00 00 00 00 00 ff ff 44 00 ff 00 00 00 00 00 00 00 00 00 00 00 ff ff ff 00 00 00 00 ff ff 00 ff ff 00 ff ff 44 00 00 00 00 ff 00 ff ff ff 00 00 00 00 00 ff ff 00 00 00 00 ff 00 ff 00 00 ff 00 ff ff 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff ff ff 00 00 00 00 00 00 00 00 00 44 44 00 00 00 ff 00 44 ff 00 00 00 ff 00 00 00 00 00 00 ff 00 ff 00 00 00 00 00 00 ff 00 44 00 44 00 ff 00 00 ff 00 00 00 ff 00 00 00 00 44
*/
