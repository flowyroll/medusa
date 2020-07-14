.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rax
push %rdx
lea addresses_WT_ht+0x1c7b8, %r10
nop
nop
nop
nop
cmp $58280, %r15
mov $0x6162636465666768, %r8
movq %r8, (%r10)
nop
nop
xor $38961, %r10
lea addresses_WT_ht+0x64f0, %rax
dec %rdx
movw $0x6162, (%rax)
nop
sub %r10, %r10
lea addresses_UC_ht+0xe340, %r15
nop
dec %r11
movb $0x61, (%r15)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x1eb80, %rdx
nop
cmp $56840, %r8
movb (%rdx), %r10b
nop
nop
xor $47514, %r11
lea addresses_normal_ht+0x4800, %rax
lfence
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
dec %rax
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x44518e0000000940, %rax
nop
nop
nop
add %r15, %r15
movw $0x5152, (%rax)
nop
nop
sub %rdx, %rdx

// Store
lea addresses_A+0x1b5fc, %rdi
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rdi)
nop
inc %r15

// REPMOV
lea addresses_PSE+0x1db40, %rsi
mov $0x940, %rdi
inc %rax
mov $103, %rcx
rep movsq
nop
nop
sub %r14, %r14

// Store
mov $0x7c0a560000000540, %rsi
add %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
nop
xor $30198, %r14

// Store
lea addresses_PSE+0x11b40, %rdi
nop
nop
and $4497, %r15
movb $0x51, (%rdi)
nop
nop
sub $41651, %r14

// Store
mov $0x72b0f50000000e80, %r14
nop
nop
nop
and $4909, %r15
mov $0x5152535455565758, %rax
movq %rax, (%r14)
nop
nop
nop
nop
nop
cmp $56465, %rsi

// REPMOV
lea addresses_normal+0x18b40, %rsi
lea addresses_normal+0xce57, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $61166, %rdx
mov $16, %rcx
rep movsw
nop
nop
nop
sub $5893, %rax

// REPMOV
lea addresses_US+0x15940, %rsi
lea addresses_RW+0x5140, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $92, %rcx
rep movsw
nop
xor %rax, %rax

// Store
lea addresses_PSE+0x11b40, %rax
clflush (%rax)
nop
nop
nop
dec %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
sub %rax, %rax

// Store
lea addresses_D+0x1f40, %rcx
nop
nop
nop
dec %rdx
movw $0x5152, (%rcx)
sub $60506, %rcx

// Store
lea addresses_US+0x18f40, %rax
nop
and $482, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
sub $58216, %rdx

// Store
mov $0x940, %r15
nop
nop
nop
nop
dec %rax
movl $0x51525354, (%r15)
nop
sub $61940, %rdx

// Load
lea addresses_US+0xf470, %rsi
nop
nop
nop
cmp $31803, %rdx
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
nop
xor %r14, %r14

// Store
mov $0x487, %r14
nop
nop
nop
cmp $5220, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
dec %rcx

// Store
lea addresses_D+0x7340, %r15
sub $52718, %rax
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
cmp $20314, %r14

// Faulty Load
lea addresses_PSE+0x11b40, %rdi
nop
nop
nop
xor %rcx, %rcx
mov (%rdi), %rsi
lea oracles, %rsi
and $0xff, %rsi
shlq $12, %rsi
mov (%rsi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_US', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'f6': 1}
f6
*/
