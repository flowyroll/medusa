.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7a10, %rsi
lea addresses_D_ht+0x9b38, %rdi
nop
cmp $51713, %r10
mov $116, %rcx
rep movsq
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x48f8, %r15
nop
nop
add $38938, %rbx
movl $0x61626364, (%r15)
nop
nop
nop
nop
add $47653, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_RW+0x133b8, %r9
nop
nop
xor %r12, %r12
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
xor $51068, %r9

// Load
lea addresses_US+0x1a9b8, %rdi
nop
nop
nop
nop
nop
sub $5328, %rsi
mov (%rdi), %r12w
nop
add %rax, %rax

// Store
lea addresses_WC+0x18796, %rbx
nop
nop
xor $40771, %r12
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_A+0x10e38, %rdi
clflush (%rdi)
nop
sub $6833, %rbx
movb $0x51, (%rdi)
sub %r9, %r9

// Load
lea addresses_D+0x1d040, %r8
nop
nop
nop
nop
and %rdi, %rdi
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
inc %rax

// Load
lea addresses_RW+0x101b8, %r8
sub %rbx, %rbx
vmovaps (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
sub %r8, %r8

// Load
mov $0x580, %r12
nop
nop
and %rax, %rax
mov (%r12), %r9
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_A+0x1a1b8, %rdi
nop
nop
nop
inc %rbx
movb (%rdi), %r8b
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
