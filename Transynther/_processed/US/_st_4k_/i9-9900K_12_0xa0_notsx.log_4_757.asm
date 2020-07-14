.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x7147, %r14
clflush (%r14)
nop
nop
add %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r14)
cmp $46817, %r8
lea addresses_UC_ht+0x1ce02, %rdx
nop
dec %r9
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
nop
sub $8775, %rdi
lea addresses_WC_ht+0x12e1a, %rsi
lea addresses_WT_ht+0x18102, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r8, %r8
mov $121, %rcx
rep movsl
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0xf842, %r13
nop
nop
nop
nop
nop
and $33969, %r8
movl $0x61626364, (%r13)
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_PSE+0x2602, %r9
clflush (%r9)
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
add $13871, %r11

// Store
lea addresses_A+0x1602, %rdx
nop
inc %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_US+0x1602, %r9
nop
nop
dec %r11
mov (%r9), %edx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'58': 4}
58 58 58 58
*/
