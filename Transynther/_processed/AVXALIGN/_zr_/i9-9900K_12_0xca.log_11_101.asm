.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x85bb, %rsi
lea addresses_normal_ht+0x1d3bb, %rdi
nop
nop
nop
dec %r8
mov $23, %rcx
rep movsb
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x1c27b, %r10
xor $50056, %r14
mov (%r10), %r12d
xor $23361, %r14
lea addresses_UC_ht+0xac2b, %rdi
clflush (%rdi)
xor $6778, %r8
mov (%rdi), %r12
nop
and $38853, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0xdf3b, %rdx
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_A+0x1f10f, %rcx
xor $60487, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
cmp $62752, %r11

// Load
lea addresses_WT+0x1dc06, %r11
nop
add %r8, %r8
movaps (%r11), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_PSE+0x1410b, %r11
sub $64983, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r11)
nop
xor $12349, %rcx

// Store
lea addresses_RW+0x1fa7b, %rcx
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movntdq %xmm3, (%rcx)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Load
mov $0xcdb, %r14
dec %rcx
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rdx
xor %r12, %r12

// Faulty Load
lea addresses_RW+0x1fa7b, %r12
nop
nop
nop
and $22099, %r8
movaps (%r12), %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
