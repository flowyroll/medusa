.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4c1b, %rsi
lea addresses_WC_ht+0x651b, %rdi
nop
nop
nop
nop
nop
add $49699, %r9
mov $97, %rcx
rep movsl
nop
xor %rax, %rax
lea addresses_UC_ht+0x72db, %r14
nop
and %r8, %r8
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x270f, %r9
nop
nop
sub %rax, %rax
movb $0x61, (%r9)
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x575b, %r14
clflush (%r14)
nop
nop
nop
xor $13270, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%r14)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0xa31b, %rsi
lea addresses_A_ht+0x6313, %rdi
nop
nop
and $3863, %rbx
mov $28, %rcx
rep movsq
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x104a1, %rsi
lea addresses_WC_ht+0x991b, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $84, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1ae03, %rsi
nop
nop
nop
nop
add $44433, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %rsi
vmovaps %ymm6, (%rsi)
xor %rcx, %rcx
lea addresses_A_ht+0x661b, %rsi
lea addresses_normal_ht+0xb91b, %rdi
sub %rbx, %rbx
mov $10, %rcx
rep movsb
nop
nop
xor $7239, %r9
lea addresses_WC_ht+0xf0be, %rax
nop
nop
nop
nop
sub %r14, %r14
mov (%rax), %r8w
nop
sub $37395, %rdi
lea addresses_normal_ht+0x3d03, %rcx
nop
nop
nop
nop
sub $29215, %rdi
movb (%rcx), %r9b
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rdi
push %rdx
push %rsi

// Faulty Load
mov $0x23d464000000011b, %r8
nop
nop
nop
sub $33485, %r15
vmovups (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'47': 30, 'e8': 1, '44': 2166, '68': 1, '69': 5, '66': 2, '49': 3718, '08': 29, '2c': 1, '00': 2440, '72': 4, 'c8': 1, '67': 1, 'ff': 4}
00 44 44 49 49 49 49 49 49 49 49 00 44 44 00 49 49 49 00 44 00 44 49 49 00 49 44 00 44 49 49 00 49 00 00 47 44 00 00 49 00 00 00 49 44 49 44 49 44 49 49 00 49 44 44 44 49 00 49 00 49 00 49 00 49 00 44 44 44 49 49 44 49 49 44 49 44 49 00 00 00 49 44 49 00 00 49 44 00 44 44 49 49 49 49 00 00 49 49 00 49 49 49 49 49 00 44 00 44 49 44 49 2c 49 49 44 44 49 44 00 44 49 49 49 00 49 00 49 49 49 00 49 49 49 49 49 00 44 49 49 49 00 49 49 00 49 49 49 44 44 00 49 49 49 44 49 44 44 49 00 00 49 00 00 00 00 00 00 49 44 00 49 44 49 44 00 00 49 44 44 49 44 49 49 00 44 00 44 49 44 00 44 00 00 49 49 49 49 44 49 00 49 49 49 49 44 49 00 00 49 44 49 00 44 44 44 49 00 00 49 49 00 49 49 49 49 44 44 00 49 49 49 00 44 00 00 44 49 00 44 44 44 44 00 49 49 44 44 00 49 00 49 44 49 49 49 44 00 49 49 44 49 49 49 44 49 44 49 49 49 00 44 49 44 49 49 44 00 00 00 47 00 49 00 44 00 49 44 49 49 00 00 44 00 00 49 44 00 49 44 00 49 49 49 49 00 44 49 49 49 49 49 49 44 44 49 00 49 49 49 49 44 49 44 49 49 49 00 49 44 00 44 08 49 49 49 00 44 49 49 00 49 49 00 08 49 00 44 49 49 44 49 49 44 49 00 00 00 49 49 00 44 44 00 44 49 00 00 44 00 44 49 49 44 49 00 00 49 44 44 00 00 49 49 00 49 44 49 49 44 00 00 49 00 00 49 00 49 49 49 00 00 49 00 00 49 00 44 44 49 00 49 00 00 49 44 49 00 00 49 49 49 44 44 44 00 49 49 49 44 00 44 00 44 00 44 44 49 44 49 44 49 00 49 49 49 49 44 44 49 44 49 00 49 00 00 44 00 49 00 44 49 49 49 00 49 00 44 00 49 49 49 49 49 49 00 44 49 49 00 00 49 49 49 49 44 49 49 49 49 49 49 44 49 44 00 49 49 00 49 49 49 49 44 49 49 44 00 44 49 44 49 00 44 44 49 44 49 00 44 00 49 49 44 49 44 49 00 47 00 49 49 44 49 44 49 44 49 00 49 44 44 00 49 00 47 00 49 00 49 49 49 00 49 00 49 44 49 49 49 49 49 44 00 49 49 49 00 49 44 44 00 00 00 49 00 49 44 44 49 44 44 49 49 00 49 44 49 00 49 44 49 49 44 49 49 00 44 49 00 44 00 49 00 00 00 49 49 49 49 00 49 44 49 00 44 49 00 49 49 49 44 00 00 49 49 00 49 49 00 44 44 44 00 49 00 49 44 49 44 49 00 49 00 44 49 44 49 49 08 49 44 00 49 00 49 49 44 49 44 49 49 49 49 44 49 49 00 00 00 49 49 44 44 49 49 49 49 49 44 44 49 44 00 00 49 49 44 44 49 49 49 49 49 44 00 49 00 49 44 08 49 00 44 49 00 49 49 44 44 49 44 00 49 49 49 44 49 44 00 49 44 00 49 00 00 00 49 49 49 49 49 44 49 00 44 49 00 49 00 00 49 00 49 00 49 00 00 49 49 00 49 49 00 00 44 44 49 49 00 00 49 44 49 49 49 00 44 49 00 49 49 49 49 49 49 00 49 49 00 00 49 49 49 49 00 00 44 49 49 47 49 49 44 49 49 00 49 49 49 49 00 49 00 44 00 00 00 00 00 00 49 44 44 49 49 44 44 00 44 00 00 44 00 49 49 44 00 49 44 49 44 00 49 00 00 44 49 49 44 44 00 49 49 49 49 49 44 49 49 44 44 49 00 49 44 44 00 44 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 49 44 00 00 44 49 49 44 49 49 49 00 44 44 49 49 49 00 49 44 49 49 00 49 44 44 49 49 44 08 00 49 49 49 49 49 00 49 44 49 49 49 00 44 49 00 00 49 44 49 00 44 49 00 44 49 49 44 00 00 08 44 49 44 00 49 44 44 49 00 00 00 44 00 49 49 49 49 44 49 49 00 00 44 49 44 00 49 00 49 49 00 44 44 00 00 44 49 00 00 00 44 49 49 49 44 44 00 00 49 00 49 49 44 44 44 44 44 00 00 00 00 44 00 00 49
*/
