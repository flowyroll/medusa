.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ded0, %rsi
lea addresses_D_ht+0xbef0, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $7, %rcx
rep movsb
xor $31079, %r8
lea addresses_WC_ht+0x88f0, %rsi
lea addresses_A_ht+0x1ca47, %rdi
nop
nop
nop
sub $1093, %rdx
mov $69, %rcx
rep movsl
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x73f0, %rdx
nop
nop
nop
nop
and $62664, %r10
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r8
add %rdx, %rdx
lea addresses_D_ht+0x1b1f0, %rsi
lea addresses_WT_ht+0xa9f0, %rdi
nop
sub %r8, %r8
mov $63, %rcx
rep movsq
nop
nop
xor $21316, %r12
lea addresses_UC_ht+0x109f0, %rsi
lea addresses_D_ht+0xae9e, %rdi
nop
nop
nop
xor %r14, %r14
mov $126, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0x144f0, %r14
nop
nop
nop
nop
xor $45165, %r8
mov $0x6162636465666768, %r10
movq %r10, (%r14)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x1e830, %r14
nop
nop
nop
and $48115, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
dec %r8
lea addresses_normal_ht+0x17adb, %rsi
lea addresses_normal_ht+0xd5f0, %rdi
nop
nop
nop
nop
nop
and $41589, %r8
mov $72, %rcx
rep movsb
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x145f0, %rsi
lea addresses_A_ht+0x90f0, %rdi
clflush (%rdi)
nop
nop
and $58967, %r12
mov $18, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x124f0, %rsi
lea addresses_UC_ht+0x72f0, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $24, %rcx
rep movsb
nop
nop
nop
nop
cmp $45592, %r14
lea addresses_normal_ht+0x4df0, %r10
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
dec %rdi
lea addresses_D_ht+0xc1f0, %r10
xor $5838, %rdi
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x65f0, %r8
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r8)
nop
nop
sub $9760, %r8
lea addresses_A_ht+0x1cb08, %rdi
nop
nop
nop
nop
nop
dec %rsi
movb (%rdi), %dl
nop
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x11df0, %rcx
nop
sub $46392, %r8
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
and %r8, %r8

// Store
mov $0x648f460000000c18, %rcx
nop
nop
xor $61422, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_A+0xfaf0, %r8
sub %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, (%r8)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0xb854, %rbx
nop
and $23483, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rbx)
add $60582, %r9

// Load
mov $0x5f0, %r8
nop
nop
nop
nop
nop
inc %r9
mov (%r8), %esi
nop
cmp $11820, %rax

// Load
lea addresses_PSE+0x1f5f0, %rax
nop
nop
nop
and $59699, %r9
movups (%rax), %xmm4
vpextrq $1, %xmm4, %r11
cmp %r9, %r9

// Store
lea addresses_WT+0x59f0, %rbx
add $35961, %rax
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
nop
nop
nop
inc %rbx

// Faulty Load
lea addresses_UC+0x11df0, %rcx
nop
nop
cmp %rax, %rax
mov (%rcx), %r8d
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'58': 72}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
