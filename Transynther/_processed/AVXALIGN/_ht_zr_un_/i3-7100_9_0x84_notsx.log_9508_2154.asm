.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c2de, %r10
nop
nop
nop
sub $56126, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
and $40256, %rdi
lea addresses_UC_ht+0x1b9ee, %rsi
lea addresses_WT_ht+0x13196, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $38, %rcx
rep movsl
nop
nop
nop
nop
sub $7976, %rdi
lea addresses_UC_ht+0x9e62, %rsi
nop
nop
nop
nop
nop
inc %r12
movb (%rsi), %cl
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x3a9e, %r9
xor %rax, %rax
movw $0x6162, (%r9)
nop
nop
inc %rax
lea addresses_D_ht+0x191ee, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
and %r9, %r9
lea addresses_D_ht+0xf77e, %rsi
lea addresses_A_ht+0x936e, %rdi
nop
nop
nop
nop
nop
and $57011, %r11
mov $122, %rcx
rep movsw
nop
nop
nop
nop
xor $40890, %r9
lea addresses_WT_ht+0xaca6, %rsi
lea addresses_UC_ht+0x1c076, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $62, %rcx
rep movsq
nop
add %r11, %r11
lea addresses_WT_ht+0x1cfee, %rsi
lea addresses_WC_ht+0x155ee, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $48, %rcx
rep movsq
nop
sub $63343, %rsi
lea addresses_UC_ht+0x24de, %r9
nop
and %rdi, %rdi
movb (%r9), %r12b
nop
nop
nop
nop
sub $29395, %r12
lea addresses_WT_ht+0x1bf2e, %r9
clflush (%r9)
add $17879, %rsi
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rdx

// Store
mov $0x4ae, %rbx
clflush (%rbx)
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rbx)
nop
add %rbx, %rbx

// Store
lea addresses_UC+0xedee, %rdx
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rdx)
nop
nop
sub %r10, %r10

// Load
lea addresses_UC+0xebee, %rbx
nop
nop
nop
nop
add %r15, %r15
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x1ee, %r13
sub $33613, %r9
vmovntdqa (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'70': 65, '49': 4556, '00': 4672, '08': 12, '46': 203}
49 00 00 00 00 00 49 49 49 00 00 00 00 00 49 00 00 49 00 49 00 00 00 00 00 49 00 49 00 00 00 00 00 49 49 49 00 00 00 49 00 49 49 49 00 00 49 00 00 00 00 00 00 49 00 49 00 49 49 49 00 00 49 00 00 00 00 49 00 49 00 00 00 00 00 00 49 00 49 00 49 49 00 00 49 00 00 00 49 00 49 49 00 00 49 49 00 49 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 00 49 00 49 00 00 49 49 49 00 00 49 49 00 49 00 49 00 49 49 49 00 00 49 49 00 49 49 49 00 49 00 49 00 00 00 49 00 46 49 49 00 46 46 49 00 49 46 49 00 00 49 49 49 49 00 49 00 46 00 46 00 49 49 00 49 00 49 49 00 00 46 49 49 49 00 00 00 49 00 00 49 49 49 00 49 49 49 49 49 00 49 49 49 00 00 49 00 49 00 49 00 49 49 00 00 49 00 00 49 49 00 00 49 49 00 49 49 49 49 00 00 49 49 00 00 49 00 46 49 49 00 00 00 00 00 49 49 49 00 00 00 00 00 49 49 49 00 00 49 49 00 00 49 49 49 00 49 49 46 00 49 49 00 00 00 49 00 49 46 49 49 49 00 49 49 49 00 49 00 49 49 49 49 46 00 49 49 46 00 49 49 49 46 49 49 46 49 46 00 00 49 00 00 49 49 00 49 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 49 49 00 49 49 49 49 46 49 00 00 49 49 00 00 00 00 00 00 00 46 49 00 49 49 49 00 00 49 49 00 00 49 00 49 49 49 49 49 49 00 00 00 49 49 70 49 00 49 00 00 49 49 00 00 00 00 49 00 49 49 49 49 49 49 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 46 49 00 00 00 49 00 00 00 00 00 70 00 00 49 49 49 00 49 00 00 00 49 00 00 49 00 00 00 00 49 00 49 00 49 00 00 00 49 00 00 00 00 49 49 49 00 49 00 49 00 00 00 49 49 00 00 49 00 00 49 00 00 00 49 49 49 49 49 49 49 49 00 49 49 00 00 00 49 00 00 49 00 49 00 49 49 00 46 00 00 00 49 00 49 00 00 00 00 49 00 49 49 00 00 00 00 00 49 49 00 00 00 00 49 49 00 00 49 00 00 49 00 00 70 00 00 00 49 49 49 49 00 00 49 49 00 00 00 49 00 00 00 00 00 00 00 49 49 49 49 49 49 49 00 00 49 00 49 46 49 49 49 49 00 00 49 00 00 49 00 49 49 00 00 00 49 00 00 00 49 00 49 00 49 49 49 49 49 49 00 49 46 49 49 49 49 70 00 49 49 00 49 00 49 00 00 00 00 49 49 46 49 00 49 00 00 49 49 49 00 49 49 00 00 49 49 49 00 00 00 00 49 00 49 49 00 00 49 00 00 49 49 00 49 49 00 49 49 49 00 49 00 00 49 00 00 00 49 00 00 00 49 49 49 49 00 00 49 49 49 00 00 49 00 00 00 49 00 00 49 49 00 49 00 49 49 49 00 00 00 49 00 49 00 49 49 49 49 49 00 49 49 00 49 46 00 49 00 49 00 49 49 49 49 00 49 00 00 49 49 00 49 49 49 49 00 49 49 49 49 00 49 00 49 00 00 00 49 00 49 00 49 00 00 00 00 49 00 00 00 49 00 49 49 00 49 49 49 00 49 49 49 49 49 49 00 00 00 00 49 00 00 00 49 00 49 49 00 00 46 49 00 49 49 00 00 00 00 49 49 49 49 49 49 00 49 00 49 00 00 00 00 00 00 00 49 49 49 49 00 49 49 00 00 49 00 49 00 49 00 00 49 49 49 49 49 00 49 00 49 49 49 49 49 00 00 49 49 00 49 00 49 00 00 00 49 49 00 49 49 00 49 00 00 49 00 00 49 49 49 49 00 49 49 00 49 49 49 49 00 00 49 00 00 49 00 49 00 49 00 00 00 00 46 49 49 00 49 49 00 00 49 49 00 49 00 49 00 00 49 00 00 00 00 00 49 49 49 49 49 00 49 49 00 00 49 49 00 49 49 49 00 49 49 00 49 49 49 00 00 49 49 49 49 49 00 49 49 00 00 49 49 49 49 00 49 49 00 49 00 00 00 49 49 00 49 49 49 49 00 49 00 49 49 49 49 00 49 49 49 49 00 49 49 49 00 49 49 00 00 49 49 49
*/
