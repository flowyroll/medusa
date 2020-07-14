.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rdx
lea addresses_D_ht+0x1eeb0, %r14
nop
nop
nop
nop
nop
inc %r10
movb (%r14), %r13b
nop
nop
inc %r13
lea addresses_normal_ht+0x3f06, %rdx
nop
nop
nop
nop
add $22113, %r9
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x1c440, %r10
clflush (%r10)
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%r10)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x9d80, %r10
nop
nop
nop
nop
and $35576, %r8
mov (%r10), %r9d
nop
nop
cmp $24239, %r8
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_normal+0x13420, %r15
add %rcx, %rcx
movl $0x51525354, (%r15)
nop
nop
inc %rbp

// Faulty Load
mov $0x340, %r15
nop
cmp $6454, %rax
mov (%r15), %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'00': 1}
00
*/
