.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x16e7d, %rbp
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x831d, %r9
nop
nop
nop
nop
nop
add $53828, %r11
movb (%r9), %bl
add %r15, %r15
lea addresses_normal_ht+0x15f45, %r15
nop
nop
nop
nop
add %r10, %r10
movb (%r15), %r11b
nop
nop
nop
nop
sub $45307, %r15
lea addresses_A_ht+0x1069d, %rsi
lea addresses_D_ht+0x1d543, %rdi
sub $788, %r15
mov $126, %rcx
rep movsw
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xe962, %rsi
lea addresses_D_ht+0x1b95b, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $55, %rcx
rep movsb
nop
nop
dec %rbx
lea addresses_normal_ht+0x18b1d, %r10
nop
dec %rbx
movb $0x61, (%r10)
cmp %rsi, %rsi
lea addresses_UC_ht+0x7add, %rbp
nop
nop
nop
nop
nop
sub %r9, %r9
movb (%rbp), %r10b
nop
sub $54693, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rdx

// Store
mov $0x4d8d27000000071d, %r14
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_RW+0x64ad, %r11
clflush (%r11)
inc %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovaps %ymm7, (%r11)
nop
nop
sub %rbx, %rbx

// Store
mov $0x6b3d8a000000071d, %rbx
nop
nop
sub $16759, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
sub $3462, %r12

// Store
lea addresses_normal+0x1c7c7, %r11
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movaps %xmm4, (%r11)
nop
nop
inc %r9

// Load
lea addresses_D+0xf1d, %r11
nop
nop
nop
sub %rbx, %rbx
mov (%r11), %r9
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_normal+0x19f1d, %r14
nop
add $58449, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
nop
nop
inc %r12

// Store
lea addresses_WT+0x1431d, %rbx
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
and $45665, %r12

// Faulty Load
mov $0x6b3d8a000000071d, %r15
nop
nop
and $16275, %r9
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'00': 1}
00
*/
