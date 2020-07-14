.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x154d9, %r9
and $50653, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x2d9, %rsi
lea addresses_WC_ht+0x1d4d9, %rdi
clflush (%rdi)
nop
nop
nop
cmp $25316, %rbp
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
add $6691, %r9
lea addresses_UC_ht+0x12fe9, %rcx
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
sub $8182, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_D+0xbcd9, %r11
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
nop
and $29141, %rbp

// Faulty Load
lea addresses_US+0x1ccd9, %r11
nop
cmp $63187, %r10
mov (%r11), %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'58': 85}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
