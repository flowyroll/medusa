.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xe3a1, %rax
nop
nop
nop
nop
add %r12, %r12
movb (%rax), %r15b
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x4c65, %rsi
lea addresses_normal_ht+0x19825, %rdi
clflush (%rdi)
nop
nop
and $3928, %r8
mov $114, %rcx
rep movsb
xor $39534, %rcx
lea addresses_WT_ht+0x1e455, %rax
sub %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rax)
nop
add $17322, %r8
lea addresses_WT_ht+0x1ba4b, %r8
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r8)
nop
nop
xor $61773, %rsi
lea addresses_A_ht+0xc7e5, %r12
clflush (%r12)
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r12)
and $50849, %r8
lea addresses_D_ht+0xa0e5, %r15
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%r15)
nop
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0x75e5, %rax
nop
and $35315, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rax)
nop
nop
nop
cmp $20519, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi

// Store
mov $0x460ab900000003c9, %r12
nop
add %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movaps %xmm2, (%r12)
nop
inc %r8

// Store
lea addresses_US+0x6f65, %r14
nop
nop
nop
nop
sub %r11, %r11
movl $0x51525354, (%r14)
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_A+0x14fe5, %rdi
nop
xor $1113, %r8
mov (%rdi), %r11d
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'00': 39}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
