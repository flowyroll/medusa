.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x2ce5, %r10
cmp $36776, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %r10
movaps %xmm6, (%r10)
nop
nop
nop
nop
nop
sub $61331, %r12
lea addresses_UC_ht+0x1e3b, %r9
nop
nop
and %rcx, %rcx
mov (%r9), %r13d
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1e5fd, %rsi
lea addresses_normal_ht+0x2083, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x86bd, %r13
nop
sub %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
add %rdi, %rdi
lea addresses_D_ht+0x1621d, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
sub $50577, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rdi

// Store
lea addresses_D+0x8fbd, %rax
nop
nop
and $26530, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rax)
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_US+0xdfbd, %r10
nop
nop
nop
add $47387, %r11
movb (%r10), %r12b
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'16': 39, '58': 976, '00': 5}
16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 16 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 16 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 16 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 16 58 58 58 58 58 58 58
*/
