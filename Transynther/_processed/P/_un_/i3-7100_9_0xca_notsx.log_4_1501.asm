.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7335, %r8
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r8)
inc %r11
lea addresses_WT_ht+0x13539, %rsi
lea addresses_UC_ht+0x7589, %rdi
inc %r12
mov $31, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1abb5, %r8
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x69f9, %rsi
lea addresses_UC_ht+0xba1d, %rdi
nop
nop
nop
nop
sub $25375, %r12
mov $7, %rcx
rep movsb
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x1a7f9, %rsi
lea addresses_UC_ht+0x45f9, %rdi
dec %r15
mov $126, %rcx
rep movsq
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x41f9, %rcx
clflush (%rcx)
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
cmp $26062, %rcx
lea addresses_D_ht+0x147f9, %rsi
lea addresses_WC_ht+0x8709, %rdi
nop
nop
cmp $50730, %r11
mov $13, %rcx
rep movsl
nop
nop
nop
xor $40335, %rcx
lea addresses_WT_ht+0x17379, %r11
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
xor $3183, %rdi
lea addresses_WT_ht+0x1b5f9, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and %r15, %r15
movl $0x61626364, (%rcx)
nop
nop
nop
cmp $44103, %r12
lea addresses_UC_ht+0x14f9f, %rsi
lea addresses_WT_ht+0x1dcf9, %rdi
nop
nop
nop
cmp $41185, %r13
mov $85, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_WC_ht+0xbf9, %r12
nop
nop
nop
nop
sub %r11, %r11
mov (%r12), %r8w
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rsi

// Store
lea addresses_PSE+0x35f9, %r8
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r8)
and $44361, %rax

// Faulty Load
mov $0x9f9, %r8
nop
nop
nop
add $5516, %r11
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'dc': 3, 'e0': 1}
dc dc dc e0
*/
