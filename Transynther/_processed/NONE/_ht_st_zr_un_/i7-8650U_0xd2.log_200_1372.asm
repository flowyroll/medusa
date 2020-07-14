.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1107f, %r12
nop
xor %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %r12
vmovaps %ymm0, (%r12)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x53f, %rsi
lea addresses_WT_ht+0x1cc59, %rdi
clflush (%rdi)
nop
nop
nop
cmp $41873, %r10
mov $49, %rcx
rep movsw
nop
nop
nop
nop
add $12850, %rdi
lea addresses_A_ht+0x1104b, %r10
nop
inc %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %r10
movaps %xmm1, (%r10)
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0xb64c, %rsi
clflush (%rsi)
nop
nop
nop
and $47953, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1743f, %rsi
lea addresses_UC_ht+0x11e61, %rdi
nop
nop
nop
nop
nop
xor $48461, %r12
mov $63, %rcx
rep movsw
nop
sub %r15, %r15
lea addresses_A_ht+0x17c3f, %rsi
nop
nop
add %r14, %r14
movb $0x61, (%rsi)
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1b43f, %r14
nop
nop
nop
nop
nop
cmp $14509, %r15
mov (%r14), %si
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x5ebf, %rdx
nop
xor $6148, %r14
mov (%rdx), %si
cmp %r15, %r15
lea addresses_A_ht+0x843f, %rsi
lea addresses_WC_ht+0xa45f, %rdi
nop
xor %rdx, %rdx
mov $57, %rcx
rep movsq
nop
nop
nop
nop
sub $51519, %rdi
lea addresses_WC_ht+0x22df, %rdi
nop
nop
nop
nop
nop
dec %r14
movw $0x6162, (%rdi)
nop
nop
nop
cmp $2970, %rsi
lea addresses_D_ht+0xb03f, %rdx
xor %r14, %r14
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
cmp $43105, %r14
lea addresses_WT_ht+0x1eb0f, %r10
nop
inc %r14
movb $0x61, (%r10)
nop
nop
nop
xor $43189, %rcx
lea addresses_normal_ht+0x1053f, %r10
nop
nop
nop
nop
nop
inc %rcx
mov (%r10), %r14d
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x1242b, %r12
nop
inc %r14
mov (%r12), %dx
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WC+0x1b96c, %rdx
nop
nop
nop
add $60213, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdx)
nop
nop
sub $54677, %r14

// Load
lea addresses_US+0x1d5ff, %r12
and %r14, %r14
mov (%r12), %rdx
xor $56787, %rsi

// Store
lea addresses_US+0x12103, %rbx
clflush (%rbx)
sub $388, %r12
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
xor $28318, %rsi

// Store
mov $0x41393f000000083f, %rdx
nop
nop
nop
dec %r15
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
add $40713, %r15

// Load
lea addresses_WC+0x2657, %r11
nop
nop
nop
nop
nop
and $27290, %r14
movb (%r11), %r15b
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_D+0x994b, %r11
and %rbx, %rbx
movb $0x51, (%r11)
nop
nop
nop
nop
nop
and $11093, %r11

// Faulty Load
lea addresses_WT+0x1243f, %rbx
nop
nop
xor $56698, %r12
mov (%rbx), %r14w
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'49': 4, '00': 154, 'ff': 12, '32': 1, '18': 2, '22': 1, '34': 3, '12': 2, '3a': 3, '08': 3, '2e': 2, '06': 1, '10': 1, '1e': 1, '1a': 1, '16': 1, '4a': 2, '04': 2, '0a': 1, '24': 1, '0c': 1, '38': 1}
49 00 00 00 00 00 00 00 ff 00 00 32 00 00 18 00 00 00 00 00 00 22 00 00 00 00 00 00 34 00 00 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3a 00 00 00 00 00 00 00 00 00 08 00 00 00 2e 00 00 00 00 00 00 00 06 00 00 00 00 00 10 1e 00 00 1a 00 00 16 08 00 00 00 00 4a 00 00 00 00 00 00 18 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 3a 04 0a 24 ff 00 00 00 00 00 ff 00 04 34 00 ff 00 00 00 00 00 00 ff 00 ff 00 ff 3a 00 0c 00 49 00 00 ff 4a 00 00 00 00 00 00 00 ff 49 00 00 00 00 00 00 00 ff 00 00 00 00 00 12 00 00 00 00 2e 00 00 08 00 34 49 00 38 00 ff 00 00 00 00 00 00 00 00
*/
