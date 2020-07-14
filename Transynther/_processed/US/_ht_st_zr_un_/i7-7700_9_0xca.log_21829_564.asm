.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xef7f, %rcx
nop
nop
nop
nop
mfence
movw $0x6162, (%rcx)
xor $58951, %rcx
lea addresses_D_ht+0x67f, %rdx
nop
nop
nop
nop
nop
xor $58465, %r10
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
xor $19913, %rbx
lea addresses_A_ht+0x161f5, %r11
nop
cmp $53090, %r13
mov (%r11), %r10
and $35100, %rdi
lea addresses_D_ht+0xedf1, %rsi
lea addresses_normal_ht+0x178bb, %rdi
nop
nop
nop
inc %rbx
mov $33, %rcx
rep movsb
nop
nop
nop
nop
cmp $61309, %rsi
lea addresses_A_ht+0x1027f, %rsi
lea addresses_normal_ht+0x15af, %rdi
nop
nop
nop
nop
nop
cmp $7580, %r10
mov $99, %rcx
rep movsb
nop
nop
nop
sub $28090, %rsi
lea addresses_WT_ht+0x1376f, %rsi
lea addresses_UC_ht+0x477f, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $2, %rcx
rep movsl
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x1227f, %r11
cmp %rsi, %rsi
mov (%r11), %r13
nop
nop
nop
and $29767, %rdx
lea addresses_normal_ht+0x14c5b, %r10
nop
nop
nop
and $4137, %rdi
movl $0x61626364, (%r10)
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x2e9f, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and %r10, %r10
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
add %rbx, %rbx
lea addresses_WC_ht+0x18b7f, %r13
clflush (%r13)
nop
nop
xor $25840, %r11
movw $0x6162, (%r13)
nop
nop
xor %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x47f, %rdi
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%rdi)
nop
nop
xor $36443, %rdx

// Faulty Load
lea addresses_US+0x1027f, %rax
nop
nop
xor $63173, %rbx
mov (%rax), %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'46': 771, '48': 589, 'ad': 2, '00': 5871, 'ce': 214, '53': 582, '3c': 209, '49': 463, 'de': 81, '5f': 222, '80': 74, 'ff': 8638, '86': 1, '45': 775, '02': 555, '10': 2669, '01': 38, 'e0': 75}
45 ff 00 ff 10 ff 00 ff 00 49 53 ff 00 00 46 ff 00 ff 10 ff 00 ff 10 ff 10 00 ff 00 ff 10 ff 10 ff 10 ff 00 ff 10 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 53 00 ff 00 ff 00 ff 00 ff 00 48 ff 00 ff 00 48 ff 00 ff 10 ff 00 ff 00 ff 00 ff 00 ff 00 45 ff 00 46 ff 00 ff 00 00 ff 00 ff 00 00 46 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 00 ff 02 46 ff 00 48 49 00 ff 00 ff 10 00 ff 02 48 46 ff 00 49 00 45 ff 10 48 ff 00 45 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 46 ff 00 ff 00 ff ce ff 00 ff 00 45 00 ff 00 ff 00 ff 10 ff 00 ff 00 ff 10 46 ff 10 ff 01 ff 00 ff 10 46 ff 53 ff 00 ff 00 ff 00 46 53 00 ff 3c 45 ff 00 ff 00 ff 00 ff 10 ff 3c ff 10 ff 10 ff 00 ff 00 ff 00 ff 10 ff 00 ff 00 ff 00 53 53 ff 00 49 ff 00 ff 00 49 00 45 ff 00 ff 00 ff 10 ff 02 ff 10 ff 00 ff 10 ff ce ff 10 ff 00 ff 5f 00 ff 00 00 ff 02 46 ff 10 ff 10 ff 00 ff 00 48 49 00 53 00 ff 10 49 ff 10 ff 10 ff 00 ff 00 ff 10 ff 5f 53 ff 00 ff 00 45 ff 00 ff 00 ff 00 ff 00 45 ff 00 ff 02 ff 10 00 ff 10 48 53 45 00 ff 00 00 ff 00 ff 00 ff 10 ff 5f 00 ff 10 ff 00 ff 10 ff 00 46 ff 00 ff 02 ff 10 ff 00 ff 10 ff 00 ff 00 ff 02 ff 3c 45 00 ff ce 45 00 ff 00 ff 10 ff 10 ff 02 ff 5f 00 ff 00 ff 5f 00 00 48 49 00 53 00 ff 00 ff 00 ff 00 00 ff 10 ff 02 ff 49 00 53 00 ff 3c ff 00 48 ff 00 46 ff 10 ff 00 ff 5f 00 ff 00 ff 00 ff 00 ff 5f ff 00 46 53 ff 10 ff 10 53 ff 00 ff 00 ff 49 00 ff 10 53 00 ff 00 ff 02 ff 00 ff 80 ff 00 ff 00 48 ff 3c ff 00 ff 00 ff 00 ff 10 ff 10 ff 00 00 ff 00 ff 00 ff 00 ff 10 ff 00 ff 10 00 ff 10 ff 3c ff 00 45 ff 10 ff 10 53 00 ff 00 ff 00 49 ff 00 ff 00 ff 00 45 ff 00 00 ff 10 ff 00 00 ff 00 ff 02 ff 00 ff 00 46 ff 00 ff 10 ff 00 49 00 45 46 53 ff 00 ff 10 ff 00 46 ff 00 ff 10 ff 00 ff 00 00 ff 10 ff 10 ff 00 53 45 ff 00 ff 10 ff 00 ff 00 ff 00 49 00 53 49 00 ff 00 ff 10 ff 00 00 ff 00 ff 3c ff 10 ff 10 ff 00 ff 00 ff 10 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 10 ff 10 ff 00 ff 01 00 ff 10 00 ff 10 ff 00 45 ff 00 45 45 ff 00 ff 02 ff 02 45 00 ff 02 ff 10 ff 5f ff 00 ff 00 45 00 48 53 00 ff 3c 00 ff 00 ff 00 ff 00 46 ff ce 46 ff 00 ff 00 ff 00 ff 00 53 45 ff 00 46 46 ff 10 ff 10 00 ff 10 46 ff 00 ff 00 ff 10 53 00 45 00 ff 5f ff 00 46 ff 00 ff 02 ff 10 46 ff 00 ff 00 ff 10 ff 00 ff 00 48 45 ff 02 ff 00 ff 00 00 45 ff 10 ff 00 ff 00 ff 00 ff 00 46 46 00 ff 3c 49 ff 10 ff 10 53 ff 00 46 49 00 ff 00 ff 00 ff 49 00 ff 49 ff 00 ff 00 ff 10 00 53 00 ff e0 ff 00 ff 00 ff 00 48 ff 00 ff 10 ff 00 ff 10 45 ff 00 ff 00 00 ff 10 ff 00 ff 10 48 ff 00 ff 00 ff 10 45 00 45 ff 49 00 53 ff 00 ff ce 00 ff 00 ff 00 ff ce 53 ff 00 ff 00 ff 00 ff 10 00 ff 00 ff 3c 45 ff 00 00 ff 02 ff 00 ff 10 ff 00 46 ff 02 ff 10 ff 00 53 00 ff 10 ff 00 46 ff 10 ff 00 ff 00 00 ff 10 ff 00 ff 00 00 ff 00 ff 02 ff e0 ff 00 ff 00 ff 10 ff 00 ff 00 ff 00 ff 10 ff 00 45 ff 10 ff 00 ff 01 ff 00 45 00 ff 10 ff 10 ff 00 45 00 53 ff 00 46 ff 10 00 53 00 48 ff 00 ff 00 ff 00 ff 00 45 00 45 ff 10 48 ff 10 ff 10 53 00 49 00 ff 10 53 45 00 46 ff 00 45 ff 00 ff de ff 10 ff 00 ff 3c ff 10 45 00 ff 00 ff 00 ff 00 ff 10 ff 49 45
*/
