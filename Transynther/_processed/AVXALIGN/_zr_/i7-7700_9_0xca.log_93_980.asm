.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1830b, %rsi
lea addresses_WC_ht+0x120b, %rdi
nop
cmp %r12, %r12
mov $11, %rcx
rep movsq
inc %rsi
lea addresses_normal_ht+0xf6d7, %rsi
lea addresses_A_ht+0x15523, %rdi
nop
add $23454, %r11
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1654b, %rsi
lea addresses_A_ht+0x1d30b, %rdi
nop
nop
nop
xor $9130, %rdx
mov $91, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0xe51b, %r11
nop
xor %r10, %r10
movb $0x61, (%r11)
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1cb1f, %rsi
lea addresses_WT_ht+0x1a3a3, %rdi
and $58253, %r14
mov $58, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x17e4b, %r14
nop
nop
lfence
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
cmp $52064, %rcx
lea addresses_normal_ht+0xa65b, %rdi
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x18c0b, %rsi
lea addresses_WC_ht+0xf50b, %rdi
clflush (%rsi)
sub $7691, %r12
mov $7, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x21d3, %rsi
mov $0xccd, %rdi
nop
nop
cmp $64667, %r10
mov $9, %rcx
rep movsb
nop
nop
dec %r10

// Faulty Load
lea addresses_RW+0x1000b, %rsi
nop
nop
nop
nop
sub $11180, %r8
vmovntdqa (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'00': 93}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
