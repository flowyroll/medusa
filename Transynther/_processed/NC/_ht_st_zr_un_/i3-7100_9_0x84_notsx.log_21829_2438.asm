.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1b7eb, %rsi
lea addresses_A_ht+0x1880e, %rdi
nop
nop
nop
nop
sub $39671, %r12
mov $56, %rcx
rep movsq
nop
nop
inc %r11
lea addresses_A_ht+0xb3ca, %rdi
nop
nop
cmp $51669, %rbx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
add $15924, %rcx
lea addresses_D_ht+0xf02e, %r11
xor %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
add $5015, %rsi
lea addresses_normal_ht+0xb00e, %rbx
nop
nop
nop
nop
nop
cmp %rax, %rax
movb (%rbx), %r11b
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x1238e, %rsi
lea addresses_WC_ht+0x4d16, %rdi
sub %r11, %r11
mov $19, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $15293, %rsi
lea addresses_D_ht+0x1cea2, %r11
nop
nop
add $6535, %rcx
mov (%r11), %rsi
cmp $47075, %rdi
lea addresses_WC_ht+0x11c16, %rsi
nop
nop
nop
and $9634, %rcx
movb $0x61, (%rsi)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xb12e, %rcx
nop
nop
nop
nop
xor %r12, %r12
movl $0x61626364, (%rcx)
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdx

// Load
lea addresses_WT+0x1970e, %r8
nop
nop
nop
nop
nop
xor $55180, %r14
mov (%r8), %rbx
nop
nop
nop
nop
nop
xor %r14, %r14

// Load
lea addresses_RW+0x1740e, %r14
clflush (%r14)
nop
nop
nop
nop
and %r10, %r10
movups (%r14), %xmm6
vpextrq $1, %xmm6, %rdx
nop
cmp %r14, %r14

// Store
lea addresses_WT+0x1ea0e, %r14
nop
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r14)
xor $62496, %rbx

// Faulty Load
mov $0x5859a0000000000e, %r14
xor %rbx, %rbx
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'28': 1, 'f8': 1, 'e4': 2, 'f4': 1, '14': 1, '54': 1, '45': 15893, '88': 1, '0c': 1, '60': 4652, 'd4': 1, '80': 1, '58': 1, '10': 1, 'c0': 1, '5c': 1, 'c8': 1, '68': 1, 'b8': 1, '9c': 2, 'bc': 2, '00': 1260, '7c': 1, '40': 1}
45 45 60 45 60 60 45 45 45 45 45 45 45 60 00 45 45 45 45 45 60 45 45 45 60 45 60 45 60 45 00 45 45 60 45 45 45 45 45 45 60 45 45 60 45 60 45 60 45 60 45 45 45 60 45 45 00 00 60 45 45 45 60 60 45 60 45 45 45 60 45 60 45 60 45 45 45 60 45 60 45 45 45 45 45 60 45 60 45 00 45 45 45 45 45 45 60 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 60 45 45 60 45 60 45 45 60 45 45 60 45 45 45 45 45 00 45 60 60 45 45 60 45 45 45 45 45 45 45 45 60 45 45 45 45 45 60 45 45 60 45 45 45 00 45 60 60 45 45 60 45 45 60 45 45 60 45 00 45 45 60 45 45 45 45 45 60 45 45 60 45 60 45 00 45 45 60 45 45 00 00 45 60 45 45 45 45 45 60 45 45 45 45 45 45 45 45 45 60 00 45 45 60 60 45 45 45 60 45 45 45 60 45 45 45 00 60 45 60 45 45 45 45 45 45 45 60 45 45 45 45 45 45 45 45 45 45 60 45 00 45 45 45 60 45 45 45 45 45 45 45 45 45 45 45 60 00 45 45 45 45 60 45 45 45 45 60 45 45 45 45 45 60 60 45 60 45 60 45 60 45 45 45 45 00 60 45 45 45 45 45 45 60 45 45 60 45 60 60 45 45 45 45 60 45 45 60 45 60 45 60 45 45 60 45 45 60 45 60 45 60 60 45 45 60 45 45 45 00 60 45 45 60 45 45 45 45 60 45 45 45 45 45 60 45 45 45 00 60 45 45 45 45 60 45 60 45 45 60 45 60 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 60 45 45 60 60 45 45 45 45 45 45 45 45 45 60 45 45 45 45 60 45 60 45 45 45 45 45 60 45 45 60 45 60 45 60 45 45 60 45 45 45 45 45 60 45 45 45 45 45 45 60 45 45 45 45 45 60 45 60 60 45 45 60 60 60 45 45 60 45 60 45 45 45 45 45 45 45 45 60 45 00 45 60 45 45 45 60 45 45 60 45 00 45 45 45 45 45 60 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 60 45 45 00 45 45 45 45 45 45 45 45 45 00 45 60 45 45 45 45 45 00 45 45 60 45 45 60 45 60 45 45 45 45 45 45 45 60 45 45 45 45 60 45 60 45 45 45 60 45 45 45 45 60 60 45 45 45 60 45 45 45 60 45 00 45 45 45 60 14 60 45 60 45 45 60 45 45 45 45 60 45 45 45 60 45 60 45 45 00 45 45 45 45 45 00 45 45 45 45 60 45 60 45 45 45 45 45 60 45 45 60 45 45 45 45 45 45 45 60 45 45 00 45 45 45 45 60 45 45 45 45 45 45 45 45 60 45 45 45 45 00 60 45 45 45 00 45 45 45 45 60 45 60 45 45 60 45 60 45 45 60 45 45 45 45 60 45 45 45 45 45 45 45 45 60 7c 45 60 45 45 60 45 45 45 60 00 45 45 45 45 60 45 45 45 45 60 45 45 45 45 45 45 45 45 45 45 45 45 45 60 45 45 45 60 60 45 45 60 60 60 45 45 45 45 45 60 45 45 45 45 00 45 60 45 60 45 00 45 00 45 45 60 45 45 45 45 00 00 45 00 45 45 60 45 60 60 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 60 45 e4 45 45 45 45 45 45 45 45 45 45 45 60 45 45 60 45 60 45 45 60 45 45 45 45 60 45 60 45 45 60 45 60 45 60 45 60 45 00 45 45 60 45 00 60 45 45 45 45 45 45 45 45 00 45 45 60 45 45 60 45 45 45 45 45 45 45 45 45 60 45 45 45 45 45 45 45 60 45 45 45 45 60 45 45 00 45 45 60 45 45 45 45 60 45 45 45 60 45 45 60 45 45 45 45 45 60 45 60 45 45 45 45 45 45 45 45 60 45 60 45 45 45 45 45 60 45 45 60 45 45 45 60 45 60 45 45 45 45 45 45 45 45 60 60 45 60 45 45 45 45 60 45 00 45 45 60 45 60 45 45 45 45 60 45 60 00 45 45 45 60 45 00 45 45 45 60 45 45 45 45 60 00 45 60 45 00 45 60 45 45 60 45 45 00 00 45 60 45 45 45 45 45 60 45 45 60 45 60 45 45 45
*/
