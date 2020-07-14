.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ee2, %rsi
lea addresses_A_ht+0x1ad92, %rdi
nop
nop
xor $13102, %r14
mov $33, %rcx
rep movsq
cmp %r15, %r15
lea addresses_normal_ht+0x1e622, %rdx
nop
cmp %r15, %r15
movw $0x6162, (%rdx)
nop
nop
inc %rcx
lea addresses_A_ht+0x192b2, %rdi
nop
and $46355, %r8
movb $0x61, (%rdi)
nop
nop
sub $50586, %rsi
lea addresses_WT_ht+0x11ada, %r8
nop
nop
nop
nop
nop
xor $20550, %rcx
mov (%r8), %edx
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x15c11, %rsi
lea addresses_WC_ht+0x136d8, %rdi
nop
nop
nop
nop
nop
sub $39904, %r8
mov $114, %rcx
rep movsb
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x1ddd2, %rdx
nop
nop
nop
sub $62428, %rcx
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
and $11663, %rcx
lea addresses_normal_ht+0x15414, %r15
nop
nop
nop
add %rcx, %rcx
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0xa5d2, %rsi
lea addresses_A_ht+0xd0d2, %rdi
nop
nop
nop
nop
nop
cmp $48289, %r11
mov $88, %rcx
rep movsw
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x7d52, %r15
nop
nop
nop
nop
nop
sub $17099, %r11
movups (%r15), %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x17892, %rdi
nop
nop
dec %r11
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rsi
nop
sub $48043, %r8
lea addresses_UC_ht+0x75d2, %rsi
lea addresses_A_ht+0x17fd2, %rdi
nop
add $25770, %r8
mov $23, %rcx
rep movsw
nop
nop
nop
nop
and $62603, %r15
lea addresses_A_ht+0xa1d2, %r8
clflush (%r8)
nop
sub $27558, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x13d2, %rdx
clflush (%rdx)
nop
cmp %r8, %r8
movb (%rdx), %r14b
nop
inc %rdx
lea addresses_UC_ht+0x3202, %r11
nop
xor %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
and $0xffffffffffffffc0, %r11
movaps %xmm6, (%r11)
sub %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0xadd2, %rsi
lea addresses_normal+0xadd2, %rdi
xor $8495, %r15
mov $2, %rcx
rep movsb
nop
nop
xor $56074, %rdi

// Store
lea addresses_normal+0xadd2, %rbx
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
sub $8603, %r15

// Faulty Load
lea addresses_normal+0xadd2, %rdi
nop
nop
nop
nop
nop
add $41081, %r11
movb (%rdi), %bl
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 458}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
