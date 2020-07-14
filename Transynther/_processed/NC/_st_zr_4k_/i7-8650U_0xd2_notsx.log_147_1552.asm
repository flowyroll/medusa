.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x47e5, %rdi
nop
inc %r14
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x5f67, %rsi
lea addresses_normal_ht+0x1d8a3, %rdi
nop
add $64928, %r12
mov $103, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x5dbd, %r14
cmp %rdi, %rdi
mov (%r14), %r8w
nop
nop
xor $21640, %rdi
lea addresses_WT_ht+0x19da5, %rsi
lea addresses_D_ht+0x2ea5, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $36, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xf9a5, %r14
and %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, (%r14)
sub %r12, %r12
lea addresses_A_ht+0x15185, %r12
nop
nop
nop
nop
nop
dec %r11
movb $0x61, (%r12)
nop
nop
nop
and $8945, %rsi
lea addresses_A_ht+0x1d4a5, %rdi
nop
nop
nop
nop
nop
sub $15759, %rcx
mov (%rdi), %r8
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x69e5, %r12
nop
nop
nop
nop
nop
inc %r8
movb (%r12), %bl
nop
nop
nop
add $18855, %r8
lea addresses_D_ht+0x1da25, %r11
nop
sub %r12, %r12
movw $0x6162, (%r11)
nop
nop
inc %r12
lea addresses_UC_ht+0x168bf, %rcx
nop
nop
nop
nop
add $528, %rdi
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
and $26299, %rsi
lea addresses_WT_ht+0x1425b, %rsi
lea addresses_WT_ht+0xdc65, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $91, %rcx
rep movsq
nop
nop
nop
inc %r12
lea addresses_D_ht+0x43a5, %rsi
lea addresses_D_ht+0x3c25, %rdi
nop
nop
dec %r14
mov $8, %rcx
rep movsl
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_normal+0x69a5, %r12
nop
nop
nop
nop
nop
and $45688, %r9
mov $0x5152535455565758, %r15
movq %r15, (%r12)
nop
nop
nop
cmp $55149, %rdi

// Store
mov $0x237c3f0000000925, %r12
clflush (%r12)
cmp %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
nop
sub %r14, %r14

// Load
lea addresses_D+0x14a2d, %rdi
nop
nop
nop
and $59755, %rdx
vmovaps (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
and $27695, %r9

// Faulty Load
mov $0x8113000000009a5, %r15
add $36575, %r14
mov (%r15), %edi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'58': 136, '00': 11}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58
*/
