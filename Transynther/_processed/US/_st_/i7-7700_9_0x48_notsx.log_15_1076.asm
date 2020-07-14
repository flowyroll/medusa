.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x181db, %r12
nop
and $3858, %rbp
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
xor $3903, %r11
lea addresses_WT_ht+0x18bdf, %rbp
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%rbp), %r10b
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0xfe9b, %rax
sub $47157, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xa0db, %r10
nop
and $41288, %r12
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
sub $21055, %rbp
lea addresses_UC_ht+0x142db, %rsi
lea addresses_normal_ht+0x15f7b, %rdi
cmp $16371, %r12
mov $93, %rcx
rep movsl
nop
nop
nop
sub $16673, %rcx
lea addresses_normal_ht+0x1a49b, %rcx
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rcx), %rdi
nop
dec %rax
lea addresses_A_ht+0xe2db, %rax
clflush (%rax)
nop
nop
nop
inc %r11
mov (%rax), %r12
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xb94b, %rsi
lea addresses_D_ht+0x1a4f5, %rdi
nop
nop
nop
sub $3939, %r12
mov $68, %rcx
rep movsw
nop
inc %rbx
lea addresses_A_ht+0x13441, %r10
nop
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%r10)
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1413b, %rsi
lea addresses_normal_ht+0x6c5b, %rdi
nop
nop
nop
add %r12, %r12
mov $39, %rcx
rep movsl
sub $20248, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rdi

// Load
mov $0x77c0630000000929, %rdi
nop
nop
nop
sub %r10, %r10
movb (%rdi), %bl
nop
nop
nop
add $21810, %rbp

// Store
lea addresses_D+0x14adb, %r15
and %r8, %r8
movl $0x51525354, (%r15)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WT+0x150db, %r8
clflush (%r8)
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
xor $46084, %r15

// Faulty Load
lea addresses_US+0x1fadb, %rdi
nop
nop
dec %r15
mov (%rdi), %r10w
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_D', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'54': 15}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
