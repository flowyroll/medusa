.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x84c8, %r13
nop
nop
nop
nop
nop
add %rbx, %rbx
movb (%r13), %r9b
dec %rdx
lea addresses_A_ht+0xa68e, %r10
dec %r9
movups (%r10), %xmm3
vpextrq $0, %xmm3, %rsi
add $32544, %r13
lea addresses_normal_ht+0x170c8, %r9
nop
nop
nop
nop
nop
dec %r15
movb (%r9), %bl
nop
nop
nop
nop
dec %r13
lea addresses_D_ht+0xd4c8, %rsi
nop
cmp %rdx, %rdx
movb $0x61, (%rsi)
nop
nop
dec %rsi
lea addresses_WC_ht+0x1dbea, %rbx
nop
nop
nop
nop
inc %rsi
mov (%rbx), %dx
inc %r9
lea addresses_D_ht+0xb918, %rsi
lea addresses_normal_ht+0x45c8, %rdi
xor %r15, %r15
mov $84, %rcx
rep movsw
nop
xor $34069, %r9
lea addresses_WC_ht+0x19a08, %r13
nop
nop
nop
add $2570, %rcx
movb (%r13), %r15b
nop
nop
nop
and $7295, %r15
lea addresses_D_ht+0x420e, %rsi
lea addresses_D_ht+0x1ce94, %rdi
nop
xor $23993, %r10
mov $37, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x17ac8, %rdx
nop
xor %r13, %r13
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x9dc8, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm1
and $0xffffffffffffffc0, %rcx
vmovaps %ymm1, (%rcx)
nop
xor %rsi, %rsi
lea addresses_D_ht+0xee08, %rsi
lea addresses_normal_ht+0xc3c8, %rdi
clflush (%rdi)
nop
nop
xor $17381, %rdx
mov $42, %rcx
rep movsq
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Store
lea addresses_PSE+0x18cc8, %r9
nop
nop
nop
cmp $38511, %rax
movb $0x51, (%r9)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_A+0xe8c8, %r8
nop
nop
nop
nop
sub $61554, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r8)
nop
sub $38724, %rax

// Store
mov $0x8c8, %rbx
nop
nop
nop
xor $32579, %rdi
movb $0x51, (%rbx)
nop
nop
nop
nop
and $19233, %rbx

// Store
lea addresses_D+0x15a38, %rdi
nop
nop
nop
nop
sub $43714, %rax
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
dec %r11

// Faulty Load
lea addresses_A+0xe8c8, %rdi
nop
cmp $33551, %r15
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'08': 33, '46': 11, '00': 628}
46 46 46 00 46 46 46 46 46 46 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 08 08 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 08 08 08 08 08 08 08 00 08 08 08 08 08 08 08 08 08 08 08 00 08 00 00 08 08 08 08 08 08 08 08 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
