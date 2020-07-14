.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x167f9, %rbp
inc %r8
movb (%rbp), %r15b
nop
and $59629, %r10
lea addresses_D_ht+0x44f9, %r10
nop
nop
dec %r14
mov (%r10), %r15
nop
nop
nop
nop
nop
add $32586, %r10
lea addresses_D_ht+0x13239, %r12
nop
nop
nop
cmp %r9, %r9
mov (%r12), %r8
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x1ad91, %rsi
lea addresses_A_ht+0x11bf9, %rdi
nop
cmp %r8, %r8
mov $62, %rcx
rep movsb
nop
nop
and %r9, %r9
lea addresses_A_ht+0x160f9, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %rsi, %rsi
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
dec %rsi
lea addresses_D_ht+0x77f9, %r15
nop
nop
nop
nop
nop
cmp %rbp, %rbp
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
add %r9, %r9
lea addresses_A_ht+0x1b5d9, %r14
nop
nop
nop
and $4694, %r10
mov (%r14), %r8
nop
nop
and %r12, %r12
lea addresses_D_ht+0xcd79, %rsi
nop
nop
nop
cmp $36762, %r10
mov (%rsi), %r12
nop
xor $63806, %r10
lea addresses_D_ht+0x193b1, %r9
nop
and %rdi, %rdi
mov (%r9), %r8w
nop
sub %r15, %r15
lea addresses_UC_ht+0x1a5f9, %r12
nop
nop
sub %rbp, %rbp
movb $0x61, (%r12)
and %r9, %r9
lea addresses_A_ht+0xb425, %rsi
lea addresses_WC_ht+0x1fb5, %rdi
nop
dec %r14
mov $38, %rcx
rep movsb
nop
nop
nop
nop
cmp $1860, %r15
lea addresses_A_ht+0x138b9, %rsi
nop
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
and $0xffffffffffffffc0, %rsi
movaps %xmm0, (%rsi)
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x1bdf9, %rsi
lea addresses_D_ht+0x19cf9, %rdi
nop
sub $18992, %r9
mov $48, %rcx
rep movsb
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
mov $0x7f9, %r10
nop
nop
nop
cmp $16268, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r10)
nop
add %rcx, %rcx

// Store
mov $0x680000000ea1, %rsi
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
sub $34365, %r11

// Load
lea addresses_RW+0x15049, %rax
nop
nop
nop
cmp %r10, %r10
mov (%rax), %di
nop
inc %r11

// Store
lea addresses_D+0x5bb1, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
sub %r9, %r9

// Load
lea addresses_RW+0x17ff9, %rdi
add %rax, %rax
mov (%rdi), %rsi
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_US+0x133f9, %r10
nop
nop
nop
nop
and %rsi, %rsi
mov (%r10), %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'46': 620, '47': 139, '45': 958, '70': 3, '50': 5, 'de': 2, '32': 9131, '00': 10922, '7d': 7, '3c': 1, '01': 39, '90': 2}
00 00 00 00 45 00 32 00 00 00 00 32 32 00 32 00 00 00 00 00 00 32 00 00 32 00 32 00 00 32 45 00 00 32 47 46 00 00 00 32 00 32 00 00 00 00 00 00 32 00 32 00 00 00 45 00 00 32 00 01 00 32 32 32 00 00 00 00 00 00 32 00 00 00 45 00 45 00 32 00 32 32 00 32 32 32 00 00 32 32 32 45 00 00 00 00 32 00 00 32 32 00 45 32 32 32 32 00 32 32 00 32 32 32 32 32 00 00 46 00 32 00 00 32 00 00 32 32 00 00 32 00 00 00 00 00 00 46 00 46 00 00 00 32 45 00 32 00 00 00 00 32 32 32 00 00 32 00 32 32 00 32 46 32 00 32 32 00 32 32 00 00 32 00 32 32 00 00 32 00 00 00 32 32 00 32 32 00 32 00 32 00 00 32 00 00 32 00 32 32 00 00 00 00 32 00 32 00 00 32 46 00 00 45 32 32 32 32 46 46 32 00 32 32 00 32 00 00 32 32 32 32 00 32 32 00 00 45 00 32 00 00 45 00 00 00 32 00 32 32 32 32 00 00 46 00 32 32 00 00 00 00 32 00 32 00 32 00 00 32 32 00 32 32 32 00 00 32 32 00 32 32 45 00 45 00 32 00 46 00 32 00 32 32 32 00 32 00 32 32 32 00 45 00 46 32 32 46 00 00 00 00 00 00 00 00 32 46 32 00 00 32 32 32 00 00 32 00 00 00 00 32 32 00 32 32 00 46 32 32 32 00 00 46 32 32 00 32 32 32 00 32 00 00 32 00 00 00 32 32 32 32 00 32 00 00 32 00 00 00 00 00 32 32 00 00 32 00 32 32 00 00 32 00 00 32 32 00 32 00 32 00 00 00 32 32 00 00 32 00 32 32 32 00 00 00 00 45 00 32 00 32 32 00 00 00 00 00 32 00 00 00 45 00 00 00 32 00 00 32 00 32 32 00 00 32 00 32 00 00 00 00 32 00 00 32 32 47 00 32 32 45 00 32 46 32 00 32 32 00 32 32 32 32 00 00 00 00 00 00 00 32 32 32 32 00 32 00 32 32 00 00 32 00 00 00 00 32 46 00 32 00 00 00 32 00 00 32 32 32 00 00 00 00 00 32 32 00 46 46 32 00 00 45 00 32 00 32 00 32 32 00 46 46 00 32 32 00 32 00 00 32 32 32 00 32 00 32 32 32 32 32 00 00 00 00 00 32 32 32 00 00 32 00 00 32 32 32 32 32 32 00 45 00 45 00 00 32 00 32 00 32 32 00 00 00 32 32 00 46 00 00 00 32 00 00 00 00 00 32 32 00 32 00 32 45 46 32 00 32 00 00 32 32 32 32 32 00 00 32 00 32 00 00 32 00 00 32 00 00 32 00 45 00 00 32 32 45 46 00 32 00 00 32 32 32 00 00 00 00 32 32 32 00 00 00 32 00 00 32 32 00 32 00 32 32 32 32 32 00 00 00 45 00 00 45 00 00 32 32 00 32 00 46 00 45 00 00 00 32 32 00 00 00 00 00 01 32 00 00 00 00 00 47 00 32 32 00 32 00 32 32 00 00 46 32 32 00 32 00 32 00 32 00 32 00 00 00 00 32 32 00 00 32 00 00 32 46 00 45 32 00 32 32 32 46 00 00 32 00 45 00 32 00 32 00 32 32 00 32 47 00 00 32 32 00 00 00 00 00 47 00 00 00 00 32 32 32 32 32 32 00 45 00 32 00 32 32 00 00 32 32 32 00 00 00 32 32 00 00 32 32 00 00 00 00 00 32 00 32 32 00 00 46 32 32 00 32 00 46 32 32 32 46 32 00 32 32 32 00 32 32 32 00 00 32 32 00 32 00 32 00 32 32 00 00 00 00 00 32 00 32 00 7d 00 00 45 32 00 00 45 00 00 00 32 46 00 32 00 00 32 00 00 32 32 00 00 32 32 00 00 32 00 00 32 32 32 32 32 00 00 00 00 00 00 00 00 32 00 00 32 00 32 00 32 32 32 45 00 00 00 32 32 00 00 32 00 00 32 00 00 00 00 32 47 32 32 00 00 32 32 00 32 00 00 00 32 00 00 00 32 32 00 32 32 00 32 00 00 47 00 32 32 32 00 32 00 32 00 00 32 32 32 32 45 32 00 32 00 00 00 32 00 32 00 32 32 00 00 32 32 00 32 00 00 00 00 32 32 46 00 00 00 32 00 32 32 32 45 45 00 00 45 00 32 32 00 32 32 00
*/
