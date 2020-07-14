.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x84e4, %rsi
lea addresses_WC_ht+0x13a2a, %rdi
nop
nop
nop
xor %r13, %r13
mov $93, %rcx
rep movsq
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1ede1, %rsi
lea addresses_WC_ht+0x1cdec, %rdi
clflush (%rdi)
nop
nop
nop
dec %rbx
mov $34, %rcx
rep movsl
nop
and $24908, %rdi
lea addresses_UC_ht+0x1a2c4, %rsi
lea addresses_UC_ht+0x26e4, %rdi
nop
nop
nop
add %rdx, %rdx
mov $92, %rcx
rep movsw
nop
nop
nop
nop
sub $9535, %rsi
lea addresses_UC_ht+0x15ee4, %rbx
nop
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%rbx)
nop
cmp $12908, %rbx
lea addresses_UC_ht+0x1c3b8, %rbx
clflush (%rbx)
sub %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%rbx)
nop
nop
sub $56961, %rdi
lea addresses_D_ht+0x127a4, %rsi
lea addresses_WC_ht+0x188e4, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $82, %rcx
rep movsq
nop
sub %rbx, %rbx
lea addresses_A_ht+0x14ce4, %r13
nop
sub %rsi, %rsi
mov (%r13), %cx
sub %r11, %r11
lea addresses_normal_ht+0x17990, %rsi
lea addresses_UC_ht+0x1cda8, %rdi
nop
nop
nop
nop
cmp $44981, %rax
mov $2, %rcx
rep movsl
nop
nop
cmp $4723, %r11
lea addresses_WC_ht+0xbce4, %rcx
nop
nop
add $16120, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x1cfe4, %r11
nop
nop
nop
cmp $6729, %rax
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rdx
dec %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdx

// Load
lea addresses_RW+0x14c84, %r8
nop
nop
nop
nop
nop
dec %rcx
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
xor %rcx, %rcx

// Store
lea addresses_RW+0xb3e4, %rcx
nop
sub %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
and $33950, %r15

// Store
lea addresses_US+0xcee4, %rax
nop
add %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
nop
and $13754, %r13

// Store
lea addresses_WT+0x46e4, %rdx
nop
xor %r15, %r15
movl $0x51525354, (%rdx)
nop
nop
and %r8, %r8

// Faulty Load
mov $0x7994b800000000e4, %r10
nop
nop
nop
nop
nop
inc %r15
vmovaps (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
