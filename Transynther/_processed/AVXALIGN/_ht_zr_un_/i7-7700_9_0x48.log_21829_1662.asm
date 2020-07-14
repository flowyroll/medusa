.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc0c5, %rsi
lea addresses_normal_ht+0x2d5, %rdi
add $3309, %r15
mov $6, %rcx
rep movsl
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0x1bd55, %r9
nop
nop
add $7263, %rcx
movw $0x6162, (%r9)
nop
nop
nop
sub $57628, %r15
lea addresses_WC_ht+0x12255, %rdx
clflush (%rdx)
nop
inc %r8
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0xcd1, %rcx
nop
nop
cmp %r15, %r15
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
nop
sub $24959, %rdx
lea addresses_A_ht+0x128d5, %rsi
lea addresses_D_ht+0xc295, %rdi
nop
nop
nop
add $44681, %r10
mov $33, %rcx
rep movsl
sub %r8, %r8
lea addresses_D_ht+0x2f83, %rdx
nop
nop
nop
nop
add $17977, %rdi
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
add $54025, %r8
lea addresses_normal_ht+0x19a59, %rsi
lea addresses_D_ht+0x19125, %rdi
nop
xor %rdx, %rdx
mov $88, %rcx
rep movsb
nop
xor $64142, %rcx
lea addresses_WT_ht+0x74d5, %rsi
lea addresses_A_ht+0x14cd5, %rdi
nop
nop
nop
sub %r8, %r8
mov $83, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_WC+0x171f7, %r13
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
nop
cmp $52065, %rbp

// Faulty Load
lea addresses_PSE+0x1c8d5, %rbx
sub %rdx, %rdx
movaps (%rbx), %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'46': 14, 'ff': 2, '45': 1790, '2e': 1, '00': 10427, '49': 2798, '48': 5987, 'a8': 1, '44': 809}
48 48 00 00 00 00 48 00 00 00 48 48 00 00 00 48 00 00 00 00 00 48 00 00 48 00 48 00 45 48 48 00 49 49 45 00 00 00 48 49 48 00 48 45 00 00 48 48 48 00 48 45 48 45 45 48 48 00 00 00 49 00 00 00 48 45 49 00 48 48 00 00 49 00 49 49 49 49 00 00 00 00 45 49 48 00 00 00 00 49 00 00 48 49 00 00 00 00 49 00 48 44 49 00 48 00 00 00 48 48 00 00 49 48 45 00 00 00 48 00 00 00 00 48 00 45 00 48 00 49 48 48 48 00 00 00 45 00 00 48 44 00 48 48 00 00 49 00 49 00 48 48 45 48 00 49 00 00 48 48 49 48 48 00 48 48 00 48 44 49 00 00 00 00 00 00 48 00 00 00 49 45 00 00 00 45 48 49 00 00 00 48 45 00 48 00 00 00 00 49 00 00 00 48 49 00 00 00 00 48 49 00 45 48 00 48 00 48 00 48 49 00 00 00 00 49 48 45 00 00 00 49 48 00 00 48 49 00 45 49 48 00 44 00 48 00 44 00 45 45 44 00 48 00 45 49 00 45 48 00 48 00 49 00 48 00 45 00 48 49 00 45 44 49 48 00 48 44 00 00 48 00 48 00 00 00 45 00 00 48 45 49 49 44 00 00 00 49 49 00 48 48 00 00 00 44 00 48 49 49 00 48 48 48 48 00 00 00 45 45 49 48 49 00 44 00 49 00 00 00 48 48 45 48 48 00 00 48 48 49 00 48 00 49 00 00 48 45 48 00 49 00 00 00 48 49 48 00 00 48 45 00 48 00 48 49 00 00 49 49 00 00 48 48 45 45 00 48 48 49 48 44 00 48 00 49 48 00 00 48 00 49 45 00 48 49 48 48 00 48 00 48 49 49 00 48 45 00 44 00 45 00 48 48 49 00 44 48 00 48 00 00 00 48 45 00 48 48 48 00 00 00 00 48 48 48 00 49 00 49 00 45 00 48 48 00 48 00 00 00 48 48 00 45 00 00 00 48 00 00 00 48 00 45 49 49 00 00 48 00 00 00 00 00 48 48 48 00 48 00 00 45 48 49 00 45 48 00 49 48 00 49 00 00 48 00 00 49 48 00 00 48 49 00 00 45 48 48 00 49 49 00 00 00 00 00 00 49 44 00 00 45 49 00 00 00 48 48 48 00 00 45 00 00 49 00 48 00 00 45 48 49 00 48 44 00 49 49 00 49 00 48 48 48 00 48 48 00 48 48 00 49 48 00 00 49 00 48 48 49 48 00 00 00 48 45 00 00 00 00 00 00 48 49 00 00 48 00 48 49 48 48 00 48 00 00 00 48 00 44 00 00 00 48 00 00 00 44 00 49 45 00 48 48 00 48 00 00 00 00 00 00 00 49 48 48 00 00 48 00 00 00 00 48 00 00 49 00 48 00 00 48 00 48 49 48 00 49 49 00 49 48 49 49 00 00 00 00 48 48 48 00 00 00 00 45 48 49 00 48 45 49 45 48 00 00 48 44 49 48 00 48 00 48 48 00 00 45 00 49 00 00 48 00 49 00 48 00 00 49 48 00 00 45 00 48 00 48 00 00 48 48 48 00 00 48 00 00 44 48 49 00 00 48 00 45 49 48 00 00 48 00 48 45 49 48 49 49 48 49 48 00 49 48 00 48 44 49 00 00 00 00 45 48 00 45 49 00 48 00 48 48 49 00 48 49 00 48 48 00 48 49 49 48 45 00 49 00 00 00 00 00 44 48 49 00 00 48 00 48 49 48 48 49 00 48 49 00 00 00 00 00 48 48 00 48 49 45 48 49 00 00 48 00 00 00 48 00 49 45 00 00 00 48 44 49 00 00 00 48 00 49 00 48 48 00 44 49 00 44 00 00 00 48 49 00 00 00 45 00 48 48 49 48 48 00 49 48 48 48 44 00 48 00 48 49 48 00 48 00 48 48 49 00 45 00 00 45 00 48 00 49 00 00 00 00 00 00 00 00 00 44 48 48 48 00 00 44 00 45 48 49 49 00 00 00 00 00 00 45 49 00 48 00 00 49 00 00 00 49 00 00 00 00 00 48 00 44 49 00 48 00 00 44 00 48 45 49 49 48 44 48 48 45 48 00 00 00 48 44 00 45 00 45 48 00 48 00 00 48 48 48 00 00 00 00 48 00 48 00 44 48 00 48 00 00 00 48 00 44 00 00 00 48 48 49 00 48 49 00 00 48 00 00 48 48 48 44 49 00
*/
