.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1ef3a, %rsi
lea addresses_D_ht+0xa48a, %rdi
nop
nop
nop
nop
inc %r12
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x8f4a, %rsi
nop
nop
nop
dec %r11
mov (%rsi), %r12w
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0xc72a, %r13
clflush (%r13)
nop
nop
nop
nop
nop
cmp $45105, %rbp
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
add $48009, %r11
lea addresses_A_ht+0x1714a, %rsi
lea addresses_A_ht+0x17eca, %rdi
nop
nop
nop
nop
nop
cmp $54060, %r11
mov $71, %rcx
rep movsq
nop
nop
nop
nop
nop
add $31609, %rdi
lea addresses_D_ht+0x18b4a, %rbp
sub $51852, %rsi
mov (%rbp), %di
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x19c4a, %rsi
lea addresses_WC_ht+0x1eb1a, %rdi
nop
nop
add $39703, %r15
mov $21, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $19372, %rcx
lea addresses_D_ht+0xb74a, %rcx
nop
nop
nop
lfence
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
inc %r15
lea addresses_A_ht+0x16a06, %rsi
lea addresses_WC_ht+0x8a8a, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $30, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $22715, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x7c6a, %rsi
mov $0xb4a, %rdi
nop
nop
and %rbp, %rbp
mov $59, %rcx
rep movsb
nop
nop
xor $28672, %r14

// Faulty Load
mov $0x14946a0000000b4a, %rbp
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%rbp), %si
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_P'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'fc': 18, 'f8': 12, '3a': 1, '08': 1, 'c4': 15, 'e2': 10, '00': 416, '9a': 1, 'd4': 12, 'fe': 18, '52': 1, '80': 1, 'fa': 20, 'd6': 10, 'c2': 11, 'e0': 13, '0c': 1, 'd2': 21, 'f2': 18, 'c6': 12, 'ee': 1, '90': 1, 'f0': 12, 'e6': 15, 'ea': 9, 'f6': 18, 'e4': 6, 'f4': 13, 'd8': 7, '5e': 1, 'e8': 13, 'c8': 16}
80 00 00 00 e2 f6 d2 fc c6 00 fa fa d2 00 00 00 00 c2 f4 00 ea f2 f8 d8 00 f6 00 00 00 00 00 d2 f0 f8 e6 00 fc e8 fc c6 c2 00 e8 d6 d4 fe f6 f2 d2 f6 c4 f8 00 00 00 00 00 00 00 00 00 00 d2 00 00 00 fc e8 fc 00 d6 00 00 fa d8 00 00 f6 00 00 e0 00 00 f0 00 00 00 00 00 00 00 f0 00 00 fe fe fa f2 fa c2 c4 fa e6 00 00 00 00 00 00 e6 c4 ee 00 00 00 f6 00 00 00 e6 00 00 e2 00 00 00 00 d2 fa f6 e6 00 00 fa c6 fc e8 f6 00 00 c4 00 00 00 00 00 00 d4 c4 00 00 00 00 00 00 f6 00 00 f4 00 00 f4 00 00 00 00 00 e6 00 00 e8 00 fe f2 00 f0 f4 fc 00 00 00 00 00 00 f8 ea fc d2 00 fe c8 c8 d6 00 f6 00 00 00 00 00 00 00 00 00 c4 e6 00 00 00 00 e0 c8 00 00 c2 e2 00 00 00 08 00 f4 00 00 c2 00 c8 00 00 00 c8 fc 00 fa c6 d8 c4 f0 fe 00 00 00 00 d4 fa e4 e6 00 00 00 00 00 90 d4 d6 d6 00 00 00 f2 c4 d6 fc e2 f6 e2 e8 00 00 00 00 fe e2 00 00 e0 e8 c8 e2 d6 00 00 c6 c2 fe 00 00 d2 d2 00 00 e8 00 00 00 00 00 f2 00 00 f8 c6 5e 00 00 00 00 00 00 00 f0 fc 00 00 ea 00 00 00 00 00 00 00 00 00 fa d4 fe 00 00 d8 00 fc 00 00 c6 00 00 00 e8 fe 00 ea f0 f2 00 00 00 00 00 00 00 00 00 00 00 d4 f4 00 00 00 e0 00 e2 c8 c2 e4 f2 f2 00 00 fa 00 00 00 00 d2 00 00 00 00 00 e8 00 00 00 00 d4 00 f0 00 d8 f2 f4 e6 00 00 00 00 00 00 00 e6 00 00 00 00 00 f2 c8 3a f2 fc d2 00 fe 00 00 c4 00 00 d8 00 00 fa f0 00 00 00 ea fe fc 00 e0 00 00 00 00 00 00 00 c4 c2 00 00 00 f4 d2 c8 f4 c8 00 e0 fc 00 00 00 00 00 fa e8 c8 d2 00 00 00 00 00 00 00 00 9a 00 00 00 c6 c2 00 00 00 00 00 00 d4 00 00 00 00 c8 f8 e0 d2 fa 00 00 f8 00 00 00 00 00 00 e0 00 00 e6 00 00 00 00 d6 00 00 00 00 00 f0 fe 00 00 00 fc 00 00 c6 c8 c8 f2 00 00 e0 00 c4 e6 00 00 00 00 f6 f8 00 00 00 00 00 00 00 00 00 00 00 d4 00 f6 00 00 00 00 f4 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 d4 d4 d2 f0 00 00 00 00 00 00 00 00 00 c4 ea fc 00 00 00 d6 00 00 fa fa e4 00 00 e2 d2 c2 f2 e4 e4 d2 c4 f6 fe 00 e0 f2 f2 fe e0 00 00 00 e2 00 00 f8 ea 0c e8 e6 f2 d2 00 00 00 f8 00 fc 00 00 f2 00 00 00 00 00 c2 c6 c6 e0 d2 00 00 00 00 d2 00 00 fe c8 00 00 00 c8 00 ea 00 00 00 00 f6 00 f4 c4 fe c4 e0 f8 fe e6 00 00 00 d6 00 f4 00 00 f4 00 f6 00 00 00 00 00 f0 e4 fa e6 00 00 d2 c6 f6 d4 d8 e8 fa 00 00 fa 00 00 00 ea f8 00 00 00 00 00 00 00 f6
*/
