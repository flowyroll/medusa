.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x10f0d, %rdx
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x19c0d, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add %rbp, %rbp
movups (%r14), %xmm2
vpextrq $1, %xmm2, %r12
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x558d, %rsi
lea addresses_UC_ht+0x7d4d, %rdi
nop
nop
nop
inc %rdx
mov $4, %rcx
rep movsl
nop
nop
dec %r12
lea addresses_WT_ht+0xb8cd, %r14
nop
nop
nop
add %rsi, %rsi
movb (%r14), %r11b
xor $32178, %rbp
lea addresses_WC_ht+0x174d3, %rdi
nop
nop
nop
nop
nop
and $43149, %r9
mov (%rdi), %cx
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x9c0d, %r14
nop
nop
nop
nop
nop
and $31091, %r9
movb $0x61, (%r14)
nop
nop
and $54123, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rdx

// Load
mov $0x7ec77f000000000d, %rbp
nop
nop
nop
nop
inc %r9
mov (%rbp), %r14w
nop
nop
nop
cmp $9420, %rdx

// Store
lea addresses_RW+0x740d, %rbp
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_normal+0x11c0d, %r12
nop
nop
nop
nop
inc %r9
movb $0x51, (%r12)
nop
nop
and $10237, %rbx

// Store
lea addresses_normal+0x11c0d, %r14
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
nop
nop
add $58268, %r8

// Store
lea addresses_US+0x1790d, %rbp
and %rbx, %rbx
movl $0x51525354, (%rbp)
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_normal+0x11c0d, %r14
nop
nop
nop
sub %r8, %r8
vmovaps (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'00': 2, '58': 24}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58
*/
