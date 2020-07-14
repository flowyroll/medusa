.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1208d, %r11
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%r11), %dx
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x11ed, %rsi
lea addresses_WT_ht+0x1a48d, %rdi
nop
nop
nop
cmp $47614, %r10
mov $103, %rcx
rep movsb
dec %r10
lea addresses_WT_ht+0x5b6d, %rsi
lea addresses_UC_ht+0x990d, %rdi
nop
inc %r9
mov $112, %rcx
rep movsl
nop
and $23143, %rdi
lea addresses_UC_ht+0xf245, %rsi
lea addresses_A_ht+0x1ceb6, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $122, %rcx
rep movsq
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x13d8d, %rdi
nop
nop
lfence
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
dec %rdx
lea addresses_A_ht+0x18a8d, %r10
clflush (%r10)
dec %rcx
movups (%r10), %xmm3
vpextrq $1, %xmm3, %rdi
nop
and $21037, %r11
lea addresses_WT_ht+0x928d, %rdi
nop
nop
nop
sub %r9, %r9
mov (%rdi), %r10
nop
nop
xor $50809, %r12
lea addresses_normal_ht+0x1ad9, %r10
clflush (%r10)
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
sub $24339, %r12
lea addresses_UC_ht+0x1488d, %r11
clflush (%r11)
nop
nop
and $48619, %r10
movb (%r11), %cl
xor %r11, %r11
lea addresses_normal_ht+0x1708d, %rdi
nop
nop
nop
nop
xor $55698, %r10
movb (%rdi), %cl
and $35000, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_normal+0x948d, %rbp
xor %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
inc %r12

// Store
lea addresses_RW+0x1f8c5, %rbp
inc %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rbp)
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_normal+0x948d, %rbx
sub $53540, %rbp
movb (%rbx), %r15b
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'58': 21}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
