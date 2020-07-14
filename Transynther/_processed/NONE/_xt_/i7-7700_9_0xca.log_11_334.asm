.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xea6e, %r10
clflush (%r10)
nop
nop
nop
and %rdi, %rdi
mov (%r10), %r11d
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x113ca, %r11
clflush (%r11)
cmp %r15, %r15
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
add $1270, %r15
lea addresses_WT_ht+0x7022, %rsi
lea addresses_normal_ht+0xbaee, %rdi
clflush (%rsi)
nop
nop
nop
and $56889, %r14
mov $16, %rcx
rep movsb
sub %r8, %r8
lea addresses_WT_ht+0x7048, %rsi
nop
nop
cmp $19593, %r11
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
add %r11, %r11
lea addresses_A_ht+0x6c6e, %rsi
lea addresses_normal_ht+0x64ee, %rdi
nop
nop
nop
nop
sub $14721, %r14
mov $23, %rcx
rep movsw
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x112ae, %rcx
nop
nop
cmp %r14, %r14
movw $0x6162, (%rcx)
nop
nop
inc %rcx
lea addresses_WT_ht+0x356e, %r10
nop
nop
nop
nop
nop
sub $58296, %r14
movb $0x61, (%r10)
nop
nop
nop
nop
sub $33680, %r8
lea addresses_normal_ht+0xc66e, %r8
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0xa162, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov (%rdi), %r14w
nop
nop
nop
nop
cmp $60279, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x149be, %r14
nop
nop
nop
nop
add %r11, %r11
mov (%r14), %rcx
nop
nop
nop
add %r15, %r15

// Store
lea addresses_normal+0x1426e, %rax
and %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
dec %rcx

// Store
lea addresses_UC+0x322e, %rcx
nop
nop
nop
nop
sub $50031, %r15
movb $0x51, (%rcx)
nop
nop
nop
nop
xor $10264, %rdi

// Faulty Load
lea addresses_RW+0x1466e, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %rsi, %rsi
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'32': 11}
32 32 32 32 32 32 32 32 32 32 32
*/
