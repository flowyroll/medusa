.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xf469, %r14
nop
nop
nop
lfence
movb $0x61, (%r14)
nop
sub %r12, %r12
lea addresses_normal_ht+0x6069, %rdi
clflush (%rdi)
nop
and $12631, %r11
mov (%rdi), %rbp
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x13475, %r12
nop
nop
nop
sub $28359, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %r12
vmovaps %ymm2, (%r12)
nop
nop
add $5337, %r11
lea addresses_UC_ht+0x15569, %r14
nop
nop
xor $39568, %rcx
mov (%r14), %rdi
nop
nop
nop
add $35044, %r14
lea addresses_D_ht+0x13869, %rbp
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rbp)
nop
lfence
lea addresses_WT_ht+0x3ae9, %rcx
nop
nop
nop
nop
inc %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rcx)
dec %rdi
lea addresses_WT_ht+0x1d951, %rdi
nop
nop
nop
nop
nop
and $19852, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x64e9, %rsi
lea addresses_D_ht+0x1009, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $108, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $10280, %rsi
lea addresses_WC_ht+0x33ad, %rsi
lea addresses_normal_ht+0xfe19, %rdi
nop
sub %r12, %r12
mov $103, %rcx
rep movsb
and $16621, %r14
lea addresses_A_ht+0x94a9, %rbp
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
and $28063, %r11
lea addresses_WT_ht+0xb069, %rsi
lea addresses_A_ht+0x1ea69, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rbp
mov $108, %rcx
rep movsl
nop
nop
nop
nop
nop
and $21928, %rcx
lea addresses_D_ht+0xa869, %rsi
lea addresses_UC_ht+0x14869, %rdi
and $21433, %r12
mov $64, %rcx
rep movsq
mfence
lea addresses_WC_ht+0x15d09, %r11
clflush (%r11)
nop
nop
nop
cmp $9108, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
sub %rbx, %rbx
lea addresses_normal_ht+0x1369, %rsi
lea addresses_A_ht+0x1ff9, %rdi
nop
nop
nop
nop
and $32099, %r11
mov $53, %rcx
rep movsq
nop
nop
nop
nop
cmp $24864, %r14
lea addresses_WT_ht+0x10f69, %rbx
clflush (%rbx)
nop
and %rdi, %rdi
movb (%rbx), %cl
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_D+0x12e22, %rbp
inc %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rbp)
cmp %rcx, %rcx

// Store
lea addresses_US+0xbfa9, %rcx
nop
nop
cmp $1873, %r9
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
add $19882, %rax

// Faulty Load
lea addresses_WT+0x1c869, %rbp
nop
nop
nop
nop
and $31598, %r11
movb (%rbp), %al
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
