.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1ef3b, %r15
and $6265, %r14
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
xor $35076, %rbx
lea addresses_UC_ht+0x4bbb, %rbx
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
and $40512, %rdi
lea addresses_normal_ht+0x15bbb, %rsi
lea addresses_WT_ht+0xe31b, %rdi
nop
nop
cmp %rax, %rax
mov $93, %rcx
rep movsl
nop
nop
nop
add $53979, %rbx
lea addresses_WC_ht+0x130df, %rsi
lea addresses_WC_ht+0x148a3, %rdi
nop
nop
add %r15, %r15
mov $8, %rcx
rep movsb
nop
nop
sub $877, %r15
lea addresses_normal_ht+0x7abb, %rsi
lea addresses_normal_ht+0xffbb, %rdi
nop
and $3291, %r14
mov $78, %rcx
rep movsl
nop
nop
nop
add $56053, %r15
lea addresses_UC_ht+0x13, %rsi
lea addresses_UC_ht+0xbbbb, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $63530, %rbx
mov $71, %rcx
rep movsl
nop
nop
nop
add $1144, %rax
lea addresses_WC_ht+0x10ebb, %rsi
lea addresses_A_ht+0x4fbb, %rdi
nop
sub $19299, %r14
mov $0, %rcx
rep movsl
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xd5b, %rcx
nop
nop
nop
and $20881, %rsi
mov (%rcx), %r15
and $18385, %rbx
lea addresses_WC_ht+0x5bbb, %rsi
lea addresses_normal_ht+0x13983, %rdi
nop
nop
nop
add $24721, %rdx
mov $14, %rcx
rep movsw
nop
nop
nop
cmp $48622, %r15
lea addresses_WT_ht+0x16f3b, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and $51821, %rax
mov (%rcx), %edx
nop
nop
add $32473, %rax
lea addresses_UC_ht+0x1babb, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%rdi), %rsi
nop
nop
nop
cmp $21841, %r15
lea addresses_A_ht+0x11abb, %rdi
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
add $1842, %r14
lea addresses_D_ht+0x32cb, %rax
inc %r15
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x47db, %r15
nop
nop
nop
nop
nop
and $57474, %rax
vmovups (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
dec %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rax
push %rsi

// Load
lea addresses_PSE+0x55fb, %r9
nop
cmp %r13, %r13
mov (%r9), %esi
nop
nop
sub %rsi, %rsi

// Store
lea addresses_D+0x1e25a, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r10)
nop
add %r13, %r13

// Load
lea addresses_RW+0x3c4b, %rax
nop
nop
nop
nop
nop
sub $17512, %r9
mov (%rax), %si
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0x7c3, %r14
nop
add $35313, %r9
movw $0x5152, (%r14)
nop
nop
dec %r14

// Store
lea addresses_RW+0x14bbb, %r10
clflush (%r10)
nop
nop
dec %rax
movb $0x51, (%r10)
dec %r11

// Store
mov $0x719241000000093b, %r10
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_WT+0x3675, %r9
nop
cmp %r13, %r13
mov (%r9), %si
nop
xor %r11, %r11

// Load
lea addresses_US+0x119bb, %rax
nop
nop
nop
cmp $18978, %rsi
mov (%rax), %r14d
sub $52321, %rsi

// Faulty Load
lea addresses_RW+0x14bbb, %rsi
nop
xor %r13, %r13
movb (%rsi), %r9b
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'51': 13}
51 51 51 51 51 51 51 51 51 51 51 51 51
*/
