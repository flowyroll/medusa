.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19f11, %r11
nop
nop
nop
nop
cmp $29828, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
cmp %r12, %r12
lea addresses_normal_ht+0xb1d1, %r13
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, (%r13)
and %rdi, %rdi
lea addresses_WT_ht+0x1dad1, %rsi
lea addresses_WC_ht+0x4b11, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $1, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rdx
push %rsi

// Store
lea addresses_normal+0x11110, %rsi
clflush (%rsi)
nop
nop
nop
inc %r10
movw $0x5152, (%rsi)
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_WC+0x13711, %rdx
nop
and $23202, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
inc %r12

// Faulty Load
lea addresses_US+0x18711, %rsi
nop
nop
nop
xor %r14, %r14
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'58': 135}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
