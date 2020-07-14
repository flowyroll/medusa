.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x14387, %rsi
lea addresses_WT_ht+0x19f5b, %rdi
nop
nop
nop
cmp $24433, %r13
mov $41, %rcx
rep movsb
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x1a487, %rdx
and $47639, %rax
movb (%rdx), %r9b
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x164a7, %rdi
nop
nop
sub %r13, %r13
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
xor $39837, %rcx
lea addresses_D_ht+0x1a787, %rsi
lea addresses_WT_ht+0x1e387, %rdi
sub %r10, %r10
mov $85, %rcx
rep movsw
nop
and %rdx, %rdx
lea addresses_D_ht+0x18687, %rsi
lea addresses_WT_ht+0x1e87, %rdi
nop
xor $41532, %rdx
mov $101, %rcx
rep movsw
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x1c947, %r13
nop
nop
nop
cmp $51767, %rdx
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x1085b, %rax
clflush (%rax)
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rax)
nop
add %r13, %r13
lea addresses_WC_ht+0x18ba7, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb (%rcx), %r9b
add %rdx, %rdx
lea addresses_D_ht+0xbe87, %rcx
nop
nop
nop
nop
add $48029, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rcx)
sub %r13, %r13
lea addresses_WT_ht+0xc63f, %rsi
lea addresses_UC_ht+0x1c687, %rdi
clflush (%rdi)
and %rdx, %rdx
mov $21, %rcx
rep movsw
sub %r9, %r9
lea addresses_D_ht+0xedd1, %rsi
lea addresses_WT_ht+0x9e87, %rdi
nop
xor $33918, %r9
mov $44, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x2e87, %rdx
nop
nop
nop
sub %r13, %r13
movb $0x61, (%rdx)
nop
and %rdi, %rdi
lea addresses_WC_ht+0x11ee7, %rsi
lea addresses_D_ht+0x15b87, %rdi
cmp %rax, %rax
mov $15, %rcx
rep movsq
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x11287, %rdx
nop
nop
nop
nop
add %r10, %r10
movw $0x6162, (%rdx)
nop
nop
nop
sub $33864, %rax
lea addresses_WT_ht+0x15a87, %r9
sub %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %r9
vmovaps %ymm2, (%r9)
nop
cmp $57546, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x642b, %rcx
nop
nop
nop
inc %r13
mov (%rcx), %r8w
sub %r13, %r13

// Load
lea addresses_RW+0x3387, %r11
nop
and %rsi, %rsi
vmovaps (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
nop
xor $24589, %r13

// Load
lea addresses_UC+0x9e87, %r15
nop
nop
inc %rdi
mov (%r15), %si
nop
nop
nop
and $53346, %rsi

// Faulty Load
lea addresses_PSE+0xee87, %r8
nop
nop
add %rcx, %rcx
mov (%r8), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_RW', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'33': 256}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
