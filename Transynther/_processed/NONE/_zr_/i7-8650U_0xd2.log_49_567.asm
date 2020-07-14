.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6279, %rsi
lea addresses_D_ht+0x2879, %rdi
dec %r9
mov $58, %rcx
rep movsb
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x13599, %r8
clflush (%r8)
nop
nop
nop
sub $8051, %rax
movb (%r8), %r9b
add $41274, %rax
lea addresses_UC_ht+0xa079, %r10
nop
sub %rax, %rax
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
cmp $10222, %r9
lea addresses_WC_ht+0xb17d, %rsi
lea addresses_WT_ht+0x1d0e1, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $102, %rcx
rep movsl
nop
nop
nop
nop
xor $63805, %r8
lea addresses_normal_ht+0xaca9, %rdi
nop
nop
nop
nop
cmp $1820, %r8
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
sub $9243, %rsi
lea addresses_WT_ht+0x30b9, %rax
nop
nop
nop
cmp $22907, %r8
movb (%rax), %r9b
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x104b9, %rdi
nop
cmp %rcx, %rcx
mov (%rdi), %r10
nop
nop
nop
nop
and $22868, %rsi
lea addresses_A_ht+0x15679, %rax
nop
nop
nop
nop
xor %r13, %r13
movw $0x6162, (%rax)
nop
inc %r8
lea addresses_WC_ht+0xbd9, %rsi
nop
nop
add $55939, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rsi)
and $51236, %rcx
lea addresses_WC_ht+0xc779, %rsi
lea addresses_normal_ht+0x1e479, %rdi
nop
dec %r9
mov $94, %rcx
rep movsq
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x184b9, %r8
nop
inc %rax
movb $0x61, (%r8)
nop
add $34506, %rsi
lea addresses_D_ht+0x8af9, %rsi
lea addresses_UC_ht+0x14f79, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $125, %rcx
rep movsb
inc %r13
lea addresses_normal_ht+0x16730, %r9
nop
nop
nop
nop
nop
inc %r13
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1ebb9, %r10
nop
nop
nop
nop
nop
xor $48014, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%r10)
nop
inc %rdi
lea addresses_WT_ht+0x167a9, %rsi
lea addresses_A_ht+0x12f8f, %rdi
nop
nop
nop
add $27795, %r9
mov $58, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rdx
push %rsi

// Store
lea addresses_A+0x19879, %r8
nop
nop
nop
cmp $47991, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WT+0x19b99, %rsi
cmp %rdx, %rdx
movw $0x5152, (%rsi)
nop
nop
nop
nop
sub $41159, %r13

// Faulty Load
lea addresses_A+0x19879, %rdx
nop
sub $25203, %r11
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rdx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
