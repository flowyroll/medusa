.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e4c4, %rsi
lea addresses_D_ht+0x63f4, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $38, %rcx
rep movsb
nop
nop
nop
nop
and $11822, %rsi
lea addresses_WC_ht+0x11764, %rbp
clflush (%rbp)
cmp $16796, %r8
mov (%rbp), %r13d
nop
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x13de4, %rsi
lea addresses_D_ht+0x19ff4, %rdi
nop
nop
xor %rbx, %rbx
mov $41, %rcx
rep movsb
inc %rcx
lea addresses_normal_ht+0x6e74, %rcx
clflush (%rcx)
cmp %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
nop
nop
add $54867, %rbp
lea addresses_normal_ht+0x18853, %rbp
and $47372, %rbx
mov (%rbp), %rdi
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x17264, %rsi
lea addresses_UC_ht+0x10fa4, %rdi
clflush (%rsi)
clflush (%rdi)
add $45910, %r12
mov $85, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $6378, %rsi
lea addresses_normal_ht+0x19164, %rbp
clflush (%rbp)
nop
nop
nop
nop
inc %r8
movb (%rbp), %bl
and $6304, %r13
lea addresses_A_ht+0x9d0a, %rsi
lea addresses_UC_ht+0x197a0, %rdi
nop
and $49780, %r8
mov $114, %rcx
rep movsl
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0xb964, %r12
nop
nop
sub $24648, %rbp
movb (%r12), %r13b
nop
inc %r12
lea addresses_D_ht+0x10564, %rbp
and $14618, %r12
vmovups (%rbp), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
xor %r8, %r8
lea addresses_UC_ht+0x17e84, %rcx
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
and $53264, %rsi
lea addresses_normal_ht+0x1621a, %rsi
lea addresses_WC_ht+0x6964, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $113, %rcx
rep movsw
nop
nop
xor $11557, %rcx
lea addresses_D_ht+0x1d574, %rsi
lea addresses_normal_ht+0xd424, %rdi
clflush (%rdi)
nop
add $51448, %r12
mov $97, %rcx
rep movsl
nop
nop
nop
nop
add $12033, %r12
lea addresses_normal_ht+0x1364, %rsi
clflush (%rsi)
add $4801, %r12
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1d6e4, %rsi
lea addresses_D_ht+0x4224, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $107, %rcx
rep movsw
nop
nop
cmp $56788, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0x2964, %rbx
nop
nop
dec %rax
mov (%rbx), %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'00': 7}
00 00 00 00 00 00 00
*/
