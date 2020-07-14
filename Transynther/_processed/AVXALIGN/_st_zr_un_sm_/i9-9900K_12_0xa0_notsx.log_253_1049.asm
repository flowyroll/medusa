.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x61bd, %rsi
lea addresses_A_ht+0x13822, %rdi
xor %rbp, %rbp
mov $78, %rcx
rep movsl
and %rdx, %rdx
lea addresses_normal_ht+0xfd5d, %rsi
lea addresses_WT_ht+0x557d, %rdi
nop
cmp %r11, %r11
mov $34, %rcx
rep movsq
nop
nop
and $43361, %rbp
lea addresses_A_ht+0x88dd, %rsi
lea addresses_A_ht+0x1d8a2, %rdi
nop
xor %r10, %r10
mov $91, %rcx
rep movsb
nop
nop
nop
nop
nop
add $21483, %rdx
lea addresses_UC_ht+0x19e9d, %r11
nop
nop
nop
cmp $9769, %rdi
movl $0x61626364, (%r11)
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0xa15d, %rsi
lea addresses_WT_ht+0x1b30f, %rdi
nop
and %rbp, %rbp
mov $117, %rcx
rep movsw
nop
nop
nop
nop
nop
and $4647, %r10
lea addresses_normal_ht+0x1635d, %rcx
nop
nop
nop
dec %rdx
movw $0x6162, (%rcx)
nop
nop
nop
sub $51113, %rbp
lea addresses_WT_ht+0x1023b, %rsi
lea addresses_D_ht+0x1175d, %rdi
nop
nop
nop
nop
nop
xor $6188, %rdx
mov $97, %rcx
rep movsw
nop
nop
cmp $38624, %rdx
lea addresses_UC_ht+0x1ec7d, %r11
nop
nop
nop
nop
nop
sub $4094, %rbp
movups (%r11), %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
cmp $18964, %rbp
lea addresses_WC_ht+0xf69d, %rsi
lea addresses_D_ht+0x1ce5d, %rdi
nop
nop
nop
sub $1351, %rax
mov $11, %rcx
rep movsw
nop
nop
cmp $3138, %rax
lea addresses_WT_ht+0x8f1d, %rax
xor $64394, %rsi
movups (%rax), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x7f, %r11
nop
sub %rdi, %rdi
mov (%r11), %eax
nop
nop
nop
add $11474, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Load
lea addresses_WT+0x1d43d, %r9
nop
nop
nop
nop
nop
xor %r8, %r8
movntdqa (%r9), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
and $47182, %r9

// Store
mov $0x2926e4000000065d, %rbp
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbp)
nop
add $45586, %rbp

// Store
lea addresses_A+0x105c1, %rdx
cmp $18748, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
mov $0x2926e4000000065d, %r8
nop
nop
nop
nop
sub $19108, %r9
vmovntdqa (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'e2': 2, 'cc': 2, 'f2': 2, 'd8': 2, 'fa': 2, 'fc': 2, 'da': 1, 'f6': 2, 'e0': 1, 'dc': 2, 'd2': 1, 'e6': 1, 'e4': 2, '00': 17, 'ec': 1, '04': 1, 'd0': 1, 'd6': 3, '58': 204, 'fe': 1, '6e': 1, 'c0': 1, 'a2': 1}
58 00 58 58 58 58 f6 58 58 58 58 58 58 58 58 58 58 58 58 e2 58 58 58 fa 58 58 58 58 58 58 58 58 58 58 d6 58 d8 58 58 58 58 58 58 58 58 58 58 f2 58 58 00 58 58 cc e6 58 58 58 d2 58 58 58 58 00 58 58 fe 58 f6 f2 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 da 58 00 58 58 58 58 58 58 58 58 58 00 58 dc 58 00 58 58 58 58 58 58 58 58 58 58 58 d0 58 58 58 58 58 e4 58 58 58 58 d6 58 58 58 58 58 58 58 58 fc 58 58 58 00 00 58 58 fc 00 58 58 58 58 58 58 d6 58 58 58 58 58 58 58 58 58 00 58 c0 ec 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6e e0 58 58 58 04 d8 58 58 00 58 58 e2 58 58 58 58 a2 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 cc 58 58 58 fa 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 dc 58 58 58 e4
*/
