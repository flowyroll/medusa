.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rdx
push %rsi
lea addresses_A_ht+0x10807, %rax
nop
nop
nop
nop
add %r9, %r9
movb $0x61, (%rax)
nop
cmp $36060, %rdx
lea addresses_WC_ht+0xae07, %rsi
cmp $38781, %r10
movl $0x61626364, (%rsi)
add %r10, %r10
lea addresses_A_ht+0x4a67, %r11
nop
nop
sub %r8, %r8
movw $0x6162, (%r11)
nop
inc %r10
lea addresses_D_ht+0x7bd7, %r8
nop
nop
and %rax, %rax
movw $0x6162, (%r8)
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xb307, %r9
nop
nop
nop
nop
cmp $29840, %rsi
movb $0x51, (%r9)
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_PSE+0x4f07, %r9
nop
add %r8, %r8
movw $0x5152, (%r9)
dec %rdi

// Store
lea addresses_A+0xea07, %r9
nop
nop
nop
nop
nop
add $8382, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movaps %xmm7, (%r9)
nop
nop
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_A+0xea07, %r15
clflush (%r15)
nop
nop
add %rdi, %rdi
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'00': 89}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
