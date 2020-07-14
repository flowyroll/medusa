.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x15483, %rsi
lea addresses_normal_ht+0x17f95, %rdi
nop
nop
add %rbp, %rbp
mov $30, %rcx
rep movsb
nop
nop
nop
cmp $65065, %r15
lea addresses_A_ht+0x10f7b, %rsi
lea addresses_UC_ht+0xf81b, %rdi
nop
nop
inc %rbp
mov $26, %rcx
rep movsq
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x677b, %r10
nop
nop
cmp $21486, %r9
mov (%r10), %r15d
nop
nop
nop
nop
xor $32295, %rcx
lea addresses_UC_ht+0x30ec, %r10
nop
nop
nop
sub $6042, %r15
vmovups (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
and $55236, %rcx
lea addresses_normal_ht+0x737b, %r15
add %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x83, %rsi
lea addresses_normal_ht+0xdd33, %rdi
cmp %rdx, %rdx
mov $34, %rcx
rep movsl
nop
nop
nop
and $11159, %rdi
lea addresses_D_ht+0x1507b, %r9
and %rcx, %rcx
mov (%r9), %r10
nop
nop
nop
nop
nop
cmp $47759, %r15
lea addresses_WT_ht+0x6e93, %rsi
lea addresses_WC_ht+0x1ca7d, %rdi
nop
nop
nop
nop
and $18264, %rbp
mov $10, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x1937b, %r10
nop
xor %rbp, %rbp
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x865b, %rsi
lea addresses_UC_ht+0x1bebb, %rdi
cmp $40847, %rbp
mov $12, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x13b34, %rsi
lea addresses_UC_ht+0x75db, %rdi
add $32753, %rdx
mov $72, %rcx
rep movsl
nop
nop
nop
nop
add $36900, %rcx
lea addresses_normal_ht+0x1227b, %r15
nop
dec %rbp
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
xor $8528, %r9
lea addresses_normal_ht+0x557b, %r15
cmp %rsi, %rsi
mov (%r15), %ecx
nop
nop
nop
nop
xor $52567, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rdx

// Store
mov $0x35579f0000000b7b, %rax
nop
and %r12, %r12
movw $0x5152, (%rax)
nop
nop
nop
cmp %r15, %r15

// Store
mov $0x84b, %r8
nop
nop
nop
nop
inc %rdx
movl $0x51525354, (%r8)
nop
nop
nop
nop
dec %rax

// Load
lea addresses_PSE+0x1b97b, %rax
nop
nop
nop
nop
and $48892, %r11
movups (%rax), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
and $36936, %r15

// Faulty Load
lea addresses_D+0x1ab7b, %r12
nop
nop
nop
nop
sub $28280, %rdx
vmovntdqa (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': True, 'NT': False}}
{'64': 2, '6c': 99, '27': 1, '40': 3, '49': 6436, '43': 2, '04': 1, 'c5': 24, 'ff': 25, '1a': 1, 'd5': 1, '69': 101, 'cf': 25, '45': 14368, '2d': 4, '00': 715, '6b': 1, '15': 1, 'a0': 1, '10': 17, '98': 1}
00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 00 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 10 10 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 00 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 49 49 49 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 ff 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 49 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45
*/
