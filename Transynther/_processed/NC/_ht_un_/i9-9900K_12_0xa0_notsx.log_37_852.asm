.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1203a, %r8
nop
nop
nop
nop
and $63, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
add $25497, %r15
lea addresses_D_ht+0x59b1, %rbx
clflush (%rbx)
nop
nop
sub %r11, %r11
movw $0x6162, (%rbx)
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x1da8e, %r12
nop
dec %r13
mov (%r12), %rbx
nop
nop
nop
nop
sub $31775, %r12
lea addresses_WT_ht+0x6222, %r8
nop
nop
nop
nop
and %r11, %r11
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
xor $37604, %r13
lea addresses_D_ht+0x1b23c, %rsi
lea addresses_WT_ht+0x1b622, %rdi
nop
and $26859, %r13
mov $104, %rcx
rep movsb
cmp $52494, %r15
lea addresses_WT_ht+0x13222, %rsi
lea addresses_UC_ht+0x3de2, %rdi
nop
nop
sub %r13, %r13
mov $123, %rcx
rep movsw
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x15e22, %r10
nop
nop
dec %r11
movw $0x6162, (%r10)
nop
nop
nop
dec %r11
lea addresses_UC_ht+0xcede, %r15
nop
nop
nop
nop
nop
add %r11, %r11
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x177c2, %r11
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm3
and $0xffffffffffffffc0, %r11
movaps %xmm3, (%r11)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x16e62, %rsi
nop
inc %r15
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
add %r8, %r8
lea addresses_WT_ht+0x17422, %rsi
nop
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
and $35808, %r10
lea addresses_UC_ht+0x119f2, %rsi
lea addresses_WC_ht+0x1807b, %rdi
nop
nop
nop
nop
nop
cmp $37184, %r12
mov $52, %rcx
rep movsb
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1dbea, %r11
nop
nop
nop
sub $45771, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r11)
dec %r10

// Store
lea addresses_normal+0x11cde, %r15
nop
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%r15)
add %r15, %r15

// Store
lea addresses_WT+0xff82, %r11
clflush (%r11)
nop
nop
add %r10, %r10
movb $0x51, (%r11)
nop
sub $3179, %r10

// Store
lea addresses_UC+0x2a62, %rcx
nop
and $44097, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rcx)
sub $9000, %r15

// Store
lea addresses_A+0x6822, %rdx
nop
nop
nop
nop
sub $38034, %r10
movb $0x51, (%rdx)
nop
nop
sub $53180, %rcx

// REPMOV
lea addresses_WT+0x15a22, %rsi
lea addresses_A+0x14622, %rdi
and %r14, %r14
mov $2, %rcx
rep movsl
nop
nop
nop
nop
sub $23541, %rdx

// Faulty Load
mov $0x7a50be0000000a22, %r11
nop
nop
xor $32217, %rcx
movups (%r11), %xmm1
vpextrq $1, %xmm1, %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'fe': 9, '46': 24, 'ff': 4}
46 ff 46 46 46 46 46 46 46 46 ff 46 46 46 46 46 46 ff fe fe 46 fe fe 46 ff fe fe fe fe fe 46 46 46 46 46 46 46
*/
